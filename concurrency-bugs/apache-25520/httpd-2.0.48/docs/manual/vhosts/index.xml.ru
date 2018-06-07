<?xml version='1.0' encoding='KOI8-R' ?>
<!DOCTYPE manualpage SYSTEM "../style/manualpage.dtd">

<!--***************************************************-->
<!-- English revision: 1.3.2.7                         -->
<!--***************************************************-->
<!-- Translator: Veniamin Zolotuhin(venya@dergachi.net)-->
<!-- Reviewers:                                        -->
<!--             Ivan Shvedov (ivan@tversu.ru)         -->
<!--             Arthur Reznikov (art@altair.tversu.ru)-->
<!--***************************************************-->

<?xml-stylesheet type="text/xsl" href="../style/manual.ru.xsl"?>

<manualpage metafile="index.xml.meta">
<parentdocument href="../"/>

   <title>������������ �� ����������� ������ � Apache</title>

<summary>

    <p>������ <cite>����������� ����</cite> ������������ ��� ����������
    ����� ��� ������ ���-����� (��������
    <code>www.company1.com</code> � <code>www.company2.com</code>)
    �� ����� ������. ����������� ���� ����� ���� ��� "<a
    href="ip-based.html">������������ �� IP-������</a>", ��� ��������
	������������� ���������� IP ������ ��� ������� �����, ���� "<a
    href="name-based.html">������������ �� �����</a>", �������� ���
    ����� ��������� ��������� ���� ��� ������� IP-������. ���� ����,
	��� ��� ����� �������� �� ����� � ��� �� ���������� �������
	�� �������� �������� �������������.</p>

    <p>Apache ��� ����� �� ������ ��������, ������� ����������� IP-������������
    ����������� �����. ������ Apachr 1.1 � ����� ����� ������������ ���
    IP-������������ ��� � ����������� �����, ������������ �� �����
    (vhosts). ��������� ������� ����������� ������ ����� ������
    �������� <em>����-�������������</em> ��� <em>��-IP ������������ �������</em>.</p>

    <p>���� �� ������ ������ ����������, ������� �������� ���������
    ��������� ����������� ������ � Apache 1.3 � ����.</p>

</summary>

<seealso><module>mod_vhost_alias</module></seealso>
<seealso><a href="name-based.html">����������� ����� ���������� �� �����</a></seealso>
<seealso><a href="ip-based.html">IP-������������ ����������� �����</a></seealso>
<seealso><a href="examples.html">������� ����������� ������</a></seealso>
<seealso><a href="fd-limits.html">����������� �������� ������������</a></seealso>
<seealso><a href="mass.html">�������� ����������� �������</a></seealso>
<seealso><a href="details.html">����������� ������ ���������������� �����</a></seealso>

<section id="support"><title>��������� ����������� ������</title>

    <ul>
      <li><a href="name-based.html">����������� ����� ���������� �� �����</a>
	  (��������� ���-������ �� ����� IP ������)</li>
      <li><a href="ip-based.html">IP-������������ ����������� �����</a> (���������
	  IP ����� ��� ������� ���-�����)</li>
      <li><a href="examples.html">������� ����������� ������ ��� ����� �������</a></li>
      <li><a href="fd-limits.html">����������� �������� ������������</a> (���,
      <em>Too many log files</em>)</li>
      <li><a href="mass.html">����������� ��������������� �������� ����������� �������</a></li>
      <li><a href="details.html">��������� ���������� ��������� ������ ���������������� �����</a></li>
    </ul>

</section>

<section id="directives"><title>���������������� ���������</title>

    <ul>
      <li><directive type="section"
           module="core">VirtualHost</directive></li>
      <li><directive module="core">NameVirtualHost</directive></li>
      <li><directive module="core">ServerName</directive></li>
      <li><directive module="core">ServerAlias</directive></li>
      <li><directive module="core">ServerPath</directive></li>
    </ul>

    <p>���� �� ��������� ���������� ���� ������������ � ������������ �������, ��
    ���� ��� ������� Apache � ���������� ������ <code>-S</code> ����� ������ �������.
    �� ����, ������ ������������ ��������� �������:</p>

    <example>
    /usr/local/apache2/bin/httpd -S
    </example>

    <p>��� ������� ����������� �������� ����, ��� Apache ���������������
    ���� ������������. ���������� �������� IP ������� � ���� ��������
    ������� ����� ������ ������������. (�������� ����� <a
    href="../programs/httpd.html">������������ � ��������� httpd</a> ���
	�������� ������ ���������� ��� ������� �� ��������� ������)</p>

</section>
</manualpage>

