<%inherit file="base.mako" />

<%def name="device_link(device)">
    % if request_type is None:
        /?device=${device|h}
    % else:
        /?device=${device|h}&type=${request_type|h}
    % endif
</%def>

<%def name="filter_link(type)">
    % if request_device is None:
        /?type=${type|h}
    % else:
        /?type=${type|h}&device=${request_device|h}
    % endif
</%def>

<%def name="filter_label()">
    % if request_device and len(devicenames) and request_device in devicenames:
        for <i>${devicenames[request_device]|h}</i>
    % endif
    % if request_device and request_type:
        - ${request_device|h} / ${request_type|h}
    % elif request_device and not request_type:
        - ${request_device|h}
    % elif request_type and not request_device:
        - ${request_type|h}
    % endif
</%def>

<h3 id="browsefiles">Browse Files ${filter_label()}</h3>

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th id="devicename"><strong>Device</strong></th>
      <th id="typename"><b>Type</b></th>
      <th id="filename"><b>Link</b></th>
      <th id="sizename"><b>Size</b></th>
      <th id="dateaddedname"><b>Date Added</b></th>
    </tr>
  </thead>
  <tbody>
    % for file in files:
    <% device=file.device %>
    <tr>
      <td><a href="${device_link(device)}">${file.device|h}</a><br/><font size="0">${devicenames[file.device]|h}</font></td>
      <td>${file.type}</td>
      <td>
        <b class="directdl">Direct Download</b>: 
        <a class="clicklink" href="http://amfox.eu:8080/download.php?file=${file.full_path}">click!</a>
        <p><font size="-2">md5sum: ${file.md5sum|h}</font></p>
      </td>
      <td>${file.human_size|h}</size></td>
      <td>${file.date_created|h}</td>
    </tr>
    % endfor
  </tbody>
</table>
