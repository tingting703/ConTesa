/**
 * Copyright (C) 2007 Bryan Varner
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included
 * in all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * $Id: TRPrefsWindow.cpp 4182 2007-12-17 06:30:42Z charles $
 */

#include "TRPrefsWindow.h"
#include "Prefs.h"

#include <Beep.h>
#include <Box.h>
#include <Font.h>
#include <String.h>

#include <stdlib.h>
#include <stdio.h>

#include "TRApplication.h"

TRPrefsWindow::TRPrefsWindow() : BWindow(BRect(0, 0, 300, 115), "Settings",
                                         B_TITLED_WINDOW,
                                         B_ASYNCHRONOUS_CONTROLS | B_NOT_CLOSABLE | B_NOT_ZOOMABLE | B_NOT_RESIZABLE,
                                         B_CURRENT_WORKSPACE)
{
	BRect viewRect = Bounds();
	viewRect.InsetBy(-1, -1);
	BBox *box = new BBox(viewRect, NULL, B_FOLLOW_ALL);
	
	font_height fh;
	be_plain_font->GetHeight(&fh);
	
	// Text Controls.
	viewRect.Set(5, 5, viewRect.Width() - 10, fh.leading + fh.ascent + 10);
	txtFolder = new BTextControl(viewRect, "txtFolder", "Download directory:", "", 
	                             NULL, B_FOLLOW_LEFT | B_FOLLOW_TOP | B_FOLLOW_RIGHT);
	box->AddChild(txtFolder);
	
	viewRect.Set(viewRect.left, viewRect.bottom + 10,
	             viewRect.right, viewRect.bottom + fh.leading + fh.ascent + 15);
	txtPort = new BTextControl(viewRect, "txtPort", "Listen On Port:", "", 
	                           NULL, B_FOLLOW_LEFT | B_FOLLOW_TOP | B_FOLLOW_RIGHT);
	box->AddChild(txtPort);
	
	viewRect.Set(viewRect.left, viewRect.bottom + 10, 
	             viewRect.right, viewRect.bottom + fh.leading + fh.ascent + 15);
	txtUpload = new BTextControl(viewRect, "txtUpload", "Upload Limit (KB/sec):", "",
	                             NULL, B_FOLLOW_LEFT | B_FOLLOW_TOP | B_FOLLOW_RIGHT);
	box->AddChild(txtUpload);             
	
	// Buttons
	viewRect.Set(viewRect.left, viewRect.bottom + 20, 
	             viewRect.left + be_plain_font->StringWidth("Defaults") + 20, 
	             viewRect.bottom + fh.leading + fh.ascent + 10);
	btnDefaults = new BButton(viewRect, "btnDefault", "Defaults", new BMessage(TR_PREF_DEFAULTS));
	box->AddChild(btnDefaults);
	
	viewRect.OffsetBy(viewRect.Width() + 10, 0);
	viewRect.right = viewRect.left + be_plain_font->StringWidth("Cancel") + 20;
	btnCancel = new BButton(viewRect, "btnCancel", "Cancel", new BMessage(TR_PREF_CANCEL));
	box->AddChild(btnCancel);
	
	viewRect.OffsetBy(viewRect.Width() + 15, 0);
	viewRect.right = viewRect.left + be_plain_font->StringWidth("Apply") + 20;
	btnSave = new BButton(viewRect, "btnSave", "Apply", new BMessage(TR_PREF_SAVE));
	btnSave->MakeDefault(true);
	box->AddChild(btnSave);
	
	Lock();
	AddChild(box);
	ResizeTo(Bounds().Width(), viewRect.bottom + btnSave->Bounds().Height());
	
	Unlock();
}


TRPrefsWindow::~TRPrefsWindow() {
}


void TRPrefsWindow::MessageReceived(BMessage *msg) {
	if (msg->what == TR_PREF_SAVE) {
		if (WritePrefs()) {
			Hide();
		} else {
			beep();
		}
	} else if (msg->what == TR_PREF_CANCEL) {
		Hide();
	} else if (msg->what == TR_PREF_DEFAULTS) {
		txtFolder->SetText("/boot/home/Downloads");
		txtPort->SetText("9000");
		txtUpload->SetText("20");
	}
	BWindow::MessageReceived(msg);
}


void TRPrefsWindow::Show() {
	ReadPrefs();
	if (Lock()) {
		txtFolder->MakeFocus(true);
		Unlock();
	}
	BWindow::Show();
}


void TRPrefsWindow::ReadPrefs() {
	if (Lock()) {
		Prefs prefs(TRANSMISSION_SETTINGS);
		BString str("");
		if (prefs.FindString("download.folder", &str) != B_OK) {
			prefs.SetString("download.folder", "/boot/home/Downloads");
			str << "/boot/home/Downloads";
		}
		txtFolder->SetText(str.String());
		
		int32 port;
		if (prefs.FindInt32("transmission.bindPort", &port) != B_OK) {
			prefs.SetInt32("transmission.bindPort", 9000);
			port = 9000;
		}
		str = "";
		str << port;
		txtPort->SetText(str.String());
		
		int32 upload;
		if (prefs.FindInt32("transmission.uploadLimit", &upload) != B_OK) {
			prefs.SetInt32("transmission.uploadLimit", 20);
			upload = 20;
		}
		str = "";
		str << upload;
		txtUpload->SetText(str.String());

		Unlock();
	}
}


bool TRPrefsWindow::WritePrefs() {
	bool valid = true;
	
	int port = atoi(txtPort->Text());
	if (port <= 0) {
		valid = false;
		txtPort->MakeFocus(true);
	}

	const char* uploadStr = txtUpload->Text();
	int uploadLimit = atoi(txtUpload->Text());
	
	for (uint i = 0; i < strlen(uploadStr) && valid; i++) {
		if (!(uploadStr[i] >= '0' && uploadStr[i] <= '9')) {
			valid = false;
			txtUpload->MakeFocus(true);
		}
	}
	
	if (valid) {
		Prefs prefs(TRANSMISSION_SETTINGS);
		
		prefs.SetInt32("transmission.bindPort", (int32)port);
		prefs.SetString("download.folder", txtFolder->Text());
		prefs.SetInt32("transmission.uploadLimit", (int32)uploadLimit);
		
		be_app_messenger.SendMessage(new BMessage(TR_RELOAD_SETTINGS));
	}
	
	return valid;
}
