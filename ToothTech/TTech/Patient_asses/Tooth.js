$(document).ready(function () {
    for (let quadrant = 1; quadrant <= 4; quadrant++) {
        for (let tooth = 1; tooth <= 8; tooth++) {
            const inputSelector = `.input-tooth-${quadrant}${tooth}`;
            const toothSelector = `.tooth-${quadrant}${tooth}-parent`;

            $(inputSelector).focus(function () {
                $(toothSelector).css('fill', 'green');
            }).blur(function () {
                $(toothSelector).css('fill', 'none');
            });

            $(toothSelector).mouseover(function () {
                $(toothSelector).css('fill', 'green');
            }).mouseleave(function () {
                $(toothSelector).css('fill', 'none');
            });
        }
    }
});
