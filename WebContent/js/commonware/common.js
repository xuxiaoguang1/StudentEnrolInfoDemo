function addTab(subtitle, url) {
    if (!$('#mainTabPanel').tabs('exists', subtitle)) {
        $('#mainTabPanel').tabs('add', {
            title : subtitle,
            content : createFrame(url),
            closable : true,
            width : $('#mainTabPanel').width() - 10,
            height : $('#mainTabPanel').height() - 35
        });
    } else {
        $('#mainTabPanel').tabs('select', subtitle);
    }
}

function createFrame(url) {
    var s = '<iframe name="mainFrame" frameborder="0"  src="' + url
            + '" style="width:99%;height:99%;"></iframe>';
    return s;
}

function addTab1(subtitle, url) {
    if (!$('#mainTabPanel').tabs('exists', subtitle)) {
        $('#mainTabPanel').tabs('add', {
            title : subtitle,
            onLoad : getContent(url),
            closable : true,
            width : $('#mainTabPanel').width() - 10,
            height : $('#mainTabPanel').height() - 35
        });
    } else {
        $('#mainTabPanel').tabs('select', subtitle);
    }
}

function getContent(url) {
    alert(url);
}