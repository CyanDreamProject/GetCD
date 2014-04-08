function lang(lang) {
  if(lang == "de") {
    $('#title').text('CyanDream Projekt');
    $('#navall').children().text('alle');
    $('#navstable').children().text('stabil');
    $('#navrc').children().text('freigabekandidat');
    $('#navnightly').children().text('nightly');
    $('#navexperiments').children().text('experimente');
    $('#navnightly').children().text('nightly');
    $('#selectdevice').children().text('gerät auswählen');
    $('#browsefiles').text('Dateien durchsuchen');
    $('#devicename').children().text('Gerätename');
    $('#typename').children().text('Typ');
    $('#filename').children().text('Dateiname');
    $('#sizename').children().text('Größe');
    $('#dateaddedname').children().text('Hinzugefügt');
    $('.directdl').text('Direkter Download');
    $('.clicklink').text('klick!');
  }
  if(lang == "en") {
    $('#title').text('CyanDream project');
    $('#navall').children().text('all');
    $('#navstable').children().text('stable');
    $('#navrc').children().text('release candidate');
    $('#navnightly').children().text('nightly');
    $('#navexperiments').children().text('experiments');
    $('#navnightly').children().text('nightly');
    $('#selectdevice').children().text('Select device');
    $('#browsefiles').text('Browse Files ');
    $('#devicename').children().text('Device');
    $('#typename').children().text('Type');
    $('#filename').children().text('Filename');
    $('#sizename').children().text('Size');
    $('#dateaddedname').children().text('Date Added');
    $('.directdl').text('Direct Download');
    $('.clicklink').text('click!');
  }
}
function select(language) {
lang(language);
setCookie(language);
}
function setCookie(value) {
   var date, expires;
      expires = "";
   document.cookie = "language" + "=" + value + expires + "; path=/";
}
function getCookie(name) {
   var i, c, arr, cName = name + "=";
    arr = document.cookie.split(';');
    for(i=0;i < arr.length;i++) {
       c = arr[i];
          while (c.charAt(0)==' ') {
             c = c.substring(1,c.length);
          }
         if (c.indexOf(cName) == 0) {
            return c.substring(cName.length,c.length);
         }
    }
return '';
}
window.onload = function() {
  lang(getCookie('language'));
}
