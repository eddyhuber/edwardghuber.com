$(document).ready(function() {

    // Dropdowns for Skills
    $("#lang_header").click(function() {
        $("#languages").slideToggle();
        $('img', this).toggle();
    });

    $("#web_header").click(function() {
        $("#web_func").slideToggle();
        $('img', this).toggle();
    });

    $("#tools_header").click(function() {
        $("#development").slideToggle();
        $('img', this).toggle();
    });

    $("#formats_header").click(function() {
        $("#data_formats").slideToggle();
        $('img', this).toggle();
    });

    $("#unix_header").click(function() {
        $("#unix").slideToggle();
        $('img', this).toggle();
    });

    $("#os_header").click(function() {
        $("#op_sys").slideToggle();
        $('img', this).toggle();
    });

    $("#other_header").click(function() {
        $("#other_skills").slideToggle();
        $('img', this).toggle();
    });

    // Dropdowns for Schools
    $(".school_name").click(function() {
        $(this).closest(".school_card").find(".school_semesters").slideToggle();
    });

    $(".semester_name_year").click(function() {
        $(this).closest(".individual_semester").find(".semester_course_list").slideToggle();
        $('img', this).toggle();
    });

});

