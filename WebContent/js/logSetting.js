function doSubmit() {
    var params = [];
    params.push({
        "grades" : $("#grades").val()
    });
    if ($("#stdout").css("display") != "none") {
        params.push({
            "selType3" : $("#selType3").val()
        });
        params.push({
            "selFormat3" : $("#selFormat3").val()
        });
    }
    if ($("#db").css("display") != "none") {
        params.push({
            "dbaddress" : $("#dbaddress").val()
        });
        params.push({
            "dbusername" : $("#dbusername").val()
        });
        params.push({
            "dbpassword" : $("#dbpassword").val()
        });
        params.push({
            "dbformat" : $("#selDBFormat").val()
        });
        params.push("dbname", $('input[name="rdoDB"]:checked').val());
    }
    if ($("#divfile").css("display") != "none") {
        if ($(".singleFile").css("display") != "none") {
            params.push({
                "fileType" : "singleFile"
            });
            params.push({
                "selType2" : $("#selType2").val()
            });
            params.push({
                "fileinput1" : $("#fileinput1").val()
            });
            params.push({
                "selFormat2" : $("#selFormat2").val()
            });
        } else {
            params.push({
                "fileType" : "multiFile"
            });
            params.push({
                "selType1" : $("#selType1").val()
            });
            params.push({
                "selFormat1" : $("#selFormat1").val()
            });
            params.push({
                "fileinput2" : $("#fileinput2").val()
            });
            params.push({
                "buffersize" : $("#buffersize").val()
            });
            params.push({
                "buffercount" : $("#buffercount").val()
            });
        }
    }

    $.post(context + "/common/createLog4jProperties.do", {
        grades : $("#grades").val(),
        flgConsole : $("#flgConsole").val(),
        flgDB : $("#flgDB").val(),
        flgFile : $("#flgFile").val(),
        selType3 : $("#selType3").val(),
        selFormat3 : $("#selFormat3").val(),
        dbaddress : $("#dbaddress").val(),
        dbusername : $("#dbusername").val(),
        dbpassword : $("#dbpassword").val(),
        rdoDB : $("input[name='rdoDB']").val(),
        selDBFormat : $("#selDBFormat").val(),
        rdoFile : $("input[name='rdoFile']").val(),
        selType2 : $("#selType2").val(),
        selFormat2 : $("#selFormat2").val(),
        fileinput1 : $("#fileinput1").val(),
        fileField1 : $("#fileField1").val(),
        buffersize : $("#buffersize").val(),
        buffercount : $("#buffercount").val(),
        selType1 : $("#selType1").val(),
        selFormat1 : $("#selFormat1").val(),
        fileinput2 : $("#fileinput2").val(),
        fileField2 : $("#fileField2").val()
    }, function(data, textStatus) {
        alert(data);
    }, "json");
}

function doToggle() {
    $("#stdout").hide();
    $("#db").hide();
    $("#divfile").hide();

    $("#chkSotre").delegate(
            "span",
            "click",
            function() {
                var $this = this;

                if ("s1" === $this.id) {
                    $("#stdout").toggle("slow");
                } else if ("s2" === $this.id) {
                    $("#db").toggle("slow");
                } else if ("s3" === $this.id) {
                    $("#divfile").toggle("slow");
                }

                $("#stdout").is(":hidden") ? $("#flgConsole").val("0") : $(
                        "#flgConsole").val("1");
                $("#db").is(":hidden") ? $("#flgDB").val("0") : $("#flgDB")
                        .val("1");
                $("#divfile").is(":hidden") ? $("#flgFile").val("0") : $(
                        "#flgFile").val("1");
            });

    // file选择 是选择单文件处理还是多文件处理
    $("#divfile").delegate("input", "click", function() {
        var $this = this;
        if ($this.id == "rdo8") {
            $(".multiFile").hide("slow", function() {
                $(".singleFile").show("slow");
            });
        } else if ("rdo9" === $this.id) {
            $(".singleFile").hide("slow", function() {
                $(".multiFile").show("slow");
            });
        }
    });

    $("#btnSigleFile").click(function() {
        $('#fileField1').trigger("click");
    });
    // 将input file中的文件全路径映射到input文件中去，以实现以假乱真的效果
    $('#fileField1').change(function() {
        $("#fileinput1").val($('#fileField1').val());
    });
    $("#btnMultiFile").click(function() {
        $("#fileField2").trigger("click");
    });
}

// 入力check
function doInputCheck() {
    $("#selType1").change(function() {
        if ($("#selType1").val() !== "PatternLayout") {
            $("#selFormat1").attr("disabled", true);
        } else {
            $("#selFormat1").attr("disabled", false);
        }
    });
    $("#selType2").change(function() {
        if ($("#selType2").val() !== "PatternLayout") {
            $("#selFormat2").attr("disabled", true);
        } else {
            $("#selFormat2").attr("disabled", false);
        }
    });
    $("#selType3").change(function() {
        if ($("#selType3").val() !== "PatternLayout") {
            $("#selFormat3").attr("disabled", true);
        } else {
            $("#selFormat3").attr("disabled", false);
        }
    });
}