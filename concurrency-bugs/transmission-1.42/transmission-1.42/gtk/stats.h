/*
 * This file Copyright (C) 2007-2008 Charles Kerr <charles@rebelbase.com>
 *
 * This file is licensed by the GPL version 2.  Works owned by the
 * Transmission project are granted a special exemption to clause 2(b)
 * so that the bulk of its code can remain under the MIT license.
 * This exemption does not extend to derived works not owned by
 * the Transmission project.
 *
 * $Id: stats.h 6998 2008-10-31 18:25:21Z charles $
 */

#ifndef __TR_GTK_STATS_H__
#define __TR_GTK_STATS_H__

#include <gtk/gtk.h>
#include "tr-core.h"

GtkWidget* stats_dialog_create( GtkWindow * parent,
                                TrCore *    core );

#endif
