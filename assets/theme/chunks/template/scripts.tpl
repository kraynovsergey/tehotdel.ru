<script src="assets/theme/js/app.min.js"></script>

<script src="//cdn.callibri.ru/callibri.js" type="text/javascript" charset="utf-8"></script>

<script>
    document.addEventListener('fetchit:success', (e) => { 
        ym(24950747, 'reachGoal', 'order');
        gtag('event', 'order', { 'event_category' : 'request'});
    });

    var c = document.getElementsByTagName('a');
    for(var i = 0; i < c.length; i++) { 
        if((typeof(c[i]) !== undefined) && (c[i].href.indexOf('mailto') !== -1)) { 
            c[i].addEventListener('click', () => { 
                ym(24950747, 'reachGoal', 'email_click');
                gtag('event', 'email_click', { 'event_category' : 'click'});
            });

            c[i].addEventListener('copy', () => { 
                ym(24950747, 'reachGoal', 'email_copy');
                gtag('event', 'email_copy', { 'event_category' : 'click'});
            });

            c[i].addEventListener('contextmenu', () => { 
                ym(24950747, 'reachGoal', 'email_copy');
                gtag('event', 'email_copy', { 'event_category' : 'click'});
            });
        }
    }
</script>