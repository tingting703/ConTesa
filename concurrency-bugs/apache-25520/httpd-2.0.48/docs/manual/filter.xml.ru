<?xml version="1.0" encoding="KOI8-R" ?>
<!DOCTYPE manualpage SYSTEM "./style/manualpage.dtd">

<!--***************************************************-->
<!-- English revision: 1.4.2.2                         -->
<!--***************************************************-->
<!-- Translator: Ilia Soldis (rkai@tversu.ru)          -->
<!-- Reviewers:                                        -->
<!--             Ivan Shvedov (ivan@tversu.ru)         -->
<!--             Arthur Reznikov (art@altair.tversu.ru)-->
<!--***************************************************-->

<?xml-stylesheet type="text/xsl" href="./style/manual.en.xsl"?>
<manualpage metafile="filter.xml.meta">

  <title>�������</title>

  <summary>
    <p>������ �������� ��������� ������������� �������� � Apache.</p>
  </summary>

  <section id="filters">
    <title>�������</title>
    <related>
      <modulelist>
        <module>mod_deflate</module>
        <module>mod_ext_filter</module>
        <module>mod_include</module>
      </modulelist>
      <directivelist>
        <directive module="mod_mime">AddInputFilter</directive>
        <directive module="mod_mime">AddOutputFilter</directive>
        <directive module="mod_mime">RemoveInputFilter</directive>
        <directive module="mod_mime">RemoveOutputFilter</directive>
        <directive module="mod_ext_filter">ExtFilterDefine</directive>
        <directive module="mod_ext_filter">ExtFilterOptions</directive>
        <directive module="core">SetInputFilter</directive>
        <directive module="core">SetOutputFilter</directive>
      </directivelist>
    </related>
    
    <p><em>������</em> - ��� �������, ������������� ������, �������
    ���������� ��� ���������� ��������. ������, ���������� ��
    �������, �������������� <em>������� (input)</em> ��������,
    � �� ����� ��� ������, ���������� �������� ������� -
    <em>�������� (output)</em>. � ����� � ��� �� ������ �����
    ��������� ��������������� ��������� ��������, ������
    ������� �� ���������� ����� ���� ���� �����.</p>

    <p>������� ������������ ����� ������� Apache, ��� ����������
    ������� ��������� ������. � ���������� � �����, ������� �����
    ��������������� �������� - � ���� ������ ���������� ���
    ������������ ����������� ��������������� ��������,
    ����������� � ���������������� �����. � ����� ����� ��������
    ��������� ���������:
    <directive module="core">SetInputFilter</directive>,
    <directive module="core">SetOutputFilter</directive>,
    <directive module="mod_mime">AddInputFilter</directive>,
    <directive module="mod_mime">AddOutputFilter</directive>,
    <directive module="mod_mime">RemoveInputFilter</directive>, and
    <directive module="mod_mime">RemoveOutputFilter</directive>.</p>

    <p>� ����������� ����������� HTTP ������� Apache � ��������� �����
    ������ ��������� �������, ��������� ��� ������������:</p>

    <dl>
      <dt>INCLUDES</dt>
      <dd>��������� Server-Side Includes �������������� �������� <module>mod_include</module></dd>
      <dt>DEFLATE</dt>
      <dd>����� �������� ������ ����� ��������� ����� � ������� �������
          <module>mod_deflate</module>
      </dd>
    </dl>

    <p>� ���������� � �����, ������ <module>mod_ext_filter</module>
     ��������� ������������ ������� ��������� � �������� ��������.</p>
  </section>
</manualpage>
