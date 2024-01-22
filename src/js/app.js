import Lenis from '@studio-freight/lenis';
import Typed from "typed.js";
import AOS from 'aos';
import * as flsFunctions from "./modules/functions.js";
import { Fancybox } from "@fancyapps/ui";
import Swiper from 'swiper';
import { Autoplay, Navigation } from "swiper/modules";
import rangeSlider from 'range-slider-input';

flsFunctions.isWebp();
flsFunctions.phone_mask();
flsFunctions.privacy_policy();

if (document.querySelector('main').classList.contains('no-lenis')) { } else {
    const lenis = new Lenis();

    function raf(time) {
        lenis.raf(time);
        requestAnimationFrame(raf);
    }
    
    requestAnimationFrame(raf);

    const step_animation = document.querySelectorAll('[data-steps-animation]');
    if (step_animation.length > 0) {
        window.addEventListener('load', () => {
            set_step_animation();
        });    

        window.addEventListener('resize', () => {
            set_step_animation();
        });

        function set_step_animation() {
            if (document.documentElement.clientWidth > 991) {
                const steps_line = document.querySelector('[data-steps-line]');
                if (steps_line) {
                    let coords_top = document.querySelector('[data-steps-line-first]').getBoundingClientRect();
                    let coords_bottom = document.querySelector('[data-steps-line-last]').getBoundingClientRect();
                    let coords_first_item = document.querySelector('[data-steps-line-first]').closest('.service-steps__item').getBoundingClientRect();
                    steps_line.style.height = `${coords_bottom.top - coords_top.top}px`;
                    steps_line.style.top = `${coords_top.bottom - coords_first_item.top}px`;
                    steps_line.querySelector('[data-steps-animation-target]').style.height = `${coords_bottom.top - coords_top.top}px`;
                }

                step_animation.forEach(item => {
                    let target = item.querySelector('[data-steps-animation-target]');
                    let coords = target.getBoundingClientRect();

                    lenis.on('scroll', (e) => {
                        let scroll_position = e.animatedScroll + document.documentElement.clientHeight / 1.4;

                        if (scroll_position >= coords.top && scroll_position <= coords.bottom) {
                            item.style.height = `${Math.floor(scroll_position - coords.top)}px`;
                        }

                        if (scroll_position < coords.top) item.style.height = `${0}px`;
                        if (scroll_position > coords.bottom) item.style.height = `${110}%`;
                    });
                });
            }
        }
    }
}

Fancybox.bind("[data-fancybox]", {});

AOS.init({
    duration: 800
});

let scrollbar_width = () => {
    let div = document.createElement('div');
    div.style.overflowY = 'scroll';
    div.style.width = '50px';
    div.style.height = '50px';

    document.body.append(div);
    let scrollWidth = div.offsetWidth - div.clientWidth;
    div.remove();

    return scrollWidth;
}

const header = document.querySelector('.header');

const body = document.querySelector('body');
if (body) {
    if (body.classList.contains('_black')) {
        let section_bottom = 0;

        window.addEventListener('load', () => {
            let section = document.querySelector('.main .section._black'),
                section_coords = 0;

            if (section) {
                section_coords = section.getBoundingClientRect();
                section_bottom = section_coords.bottom;
            }

            window.addEventListener('scroll', () => {
                if (scrollY > (section_bottom - header.clientHeight / 2)) body.classList.remove('_black');
                else body.classList.add('_black');
            });
        });
    }
}

const data_burger = document.querySelector('[data-burger]');
if (data_burger) {
    data_burger.addEventListener('click', () => {
        if (data_burger.classList.contains('_active')) {
            close_modals();
        } else {
            let target = document.querySelector('#modal-nav');
            if (target) open_modals(target);
        }
    });
}

const open_modal = document.querySelectorAll('[data-modal]');
if (open_modal.length > 0) {
    open_modal.forEach(item => {
        item.addEventListener('click', (e) => {
            e.preventDefault();

            if ( item.classList.contains('_active-modal') ) {
                close_modals();
            } else {
                let target = document.querySelector(item.getAttribute('data-modal'));

                if (target) {
                    close_modals();
                    open_modals(target);
                }

                item.classList.add('_active-modal');
            }
        });
    });
}

const close_modal = document.querySelectorAll('[data-modal-close]');
if (close_modal.length > 0) {
    close_modal.forEach(item => {
        item.addEventListener('click', () => {
            close_modals();
        });
    });
}

function close_modals() {
    let modals = document.querySelectorAll('.modal._active');

    if (modals.length > 0) {
        modals.forEach(item => {
            item.classList.remove('_active');
        });
    }

    body.classList.remove('_modal');
    if (data_burger) data_burger.classList.remove('_active');

    body.removeAttribute('style');
    header.removeAttribute('style');

    open_modal.forEach(om => {
        om.classList.remove('_active-modal');
    });
}

function open_modals(target) {
    body.classList.add('_modal');
    body.style.marginRight = `${scrollbar_width()}px`;
    header.style.marginRight = `${scrollbar_width() * -1}px`;
    header.style.paddingRight = `${scrollbar_width()}px`;
    target.classList.add('_active');
    data_burger.classList.add('_active');
}

const inputs = document.querySelectorAll('[data-input]');
if (inputs.length > 0) {
    inputs.forEach(item => {
        item.addEventListener('keyup', () => {
            if (item.value) item.classList.add('_active')
            else item.classList.remove('_active');
        });
    });
}

const mobile_nav_link = document.querySelectorAll('[data-mobile-nav-link]');
if (mobile_nav_link.length > 0) {
    mobile_nav_link.forEach(item => {
        item.addEventListener('click', (e) => {
            e.preventDefault();
            item.classList.toggle('_active');
        });
    });
}

const typed_el = document.querySelector('[data-typed]');
if (typed_el) {
    window.addEventListener('load', () => {
        typed_el.style.width = typed_el.clientWidth + 'px';

        new Typed(typed_el, {
            strings: ['{volga}', '{￢‿￢}', '{samara}'],
            typeSpeed: 150,
            backSpeed: 50,
            loop: true,
            showCursor: false
        });
    });

    window.addEventListener('resize', () => {
        typed_el.style.width = typed_el.clientWidth + 'px';
    });
}

window.addEventListener('load', () => {
    set_height_vh();
});

window.addEventListener('resize', () => {
    set_height_vh();
});

function set_height_vh() {
    let vh = window.innerHeight * 0.01 * 100,
        header_height = document.querySelector('.header').clientHeight,
        modals = document.querySelectorAll('.modal');

    if (modals.length > 0) {
        modals.forEach(item => {
            let container = item.querySelector('.modal__container');
            item.style.height = vh - header_height - 1 + 'px';
            if (container) container.style.minHeight = vh - header_height - 1 + 'px';
        });
    }
}

const swiper_boxes = document.querySelectorAll('[data-swiper-boxes]');
if (swiper_boxes.length > 0) {
    swiper_boxes.forEach(swiper_box => {
        new Swiper(swiper_box, {
            speed: 1000,
            breakpoints: {
                0: {
                    enabled: true,
                    slidesPerView: 1.05,
                    spaceBetween: 23
                },
                575: {
                    enabled: true,
                    slidesPerView: 1.5,
                    spaceBetween: 30
                },
                767: {
                    enabled: true,
                    slidesPerView: 2.1,
                    spaceBetween: 30
                },
                991: {
                    enabled: false,
                    spaceBetween: 0
                }
            }
        });
    });
}

const swiper_boxes_full = document.querySelectorAll('[data-swiper-boxes-full]');
if (swiper_boxes_full.length > 0) {
    swiper_boxes_full.forEach(swiper_box => {
        new Swiper(swiper_box, {
            modules: [Navigation],
            navigation: {
                prevEl: swiper_box.closest('section').querySelector('[data-swiper-boxes-full-prev]'),
                nextEl: swiper_box.closest('section').querySelector('[data-swiper-boxes-full-next]')
            },
            speed: 1000,
            breakpoints: {
                0: {
                    slidesPerView: 1.05,
                    spaceBetween: 23
                },
                575: {
                    slidesPerView: 1.5,
                    spaceBetween: 30
                },
                767: {
                    slidesPerView: 2.1,
                    spaceBetween: 30
                },
                991: {
                    slidesPerView: 3,
                    spaceBetween: 30
                },
                1280: {
                    slidesPerView: 4,
                    spaceBetween: 40
                }
            }
        });
    });
}

const swiper_clients = document.querySelector('[data-swiper-clients]');
if (swiper_clients) {
    new Swiper(swiper_clients, {
        modules: [Autoplay],
        loop: true,
        speed: 1500,
        autoplay: {
            delay: 100,
            disableOnInteraction: false,
        },
        breakpoints: {
            0: {
                slidesPerView: 1.2,
                spaceBetween: 23
            },
            575: {
                slidesPerView: 2.2,
                spaceBetween: 30
            },
            767: {
                slidesPerView: 3.2,
                spaceBetween: 30
            },
            991: {
                slidesPerView: 4,
                spaceBetween: 40
            }
        }
    });
}

const swiper_reviews = document.querySelector('[data-swiper-reviews]');
if (swiper_reviews) {
    new Swiper(swiper_reviews, {
        modules: [Navigation],
        navigation: {
            prevEl: document.querySelector('[data-swiper-reviews-prev]'),
            nextEl: document.querySelector('[data-swiper-reviews-next]')
        },
        speed: 1000,
        breakpoints: {
            0: {
                slidesPerView: 1.05,
                spaceBetween: 23
            },
            575: {
                slidesPerView: 1.5,
                spaceBetween: 30
            },
            767: {
                slidesPerView: 2.1,
                spaceBetween: 30
            },
            991: {
                slidesPerView: 2,
                spaceBetween: 40
            }
        }
    });
}

const swiper_cases = document.querySelectorAll('[data-swiper-cases]');
if (swiper_cases.length > 0) {
    swiper_cases.forEach(item => {
        new Swiper(item, {
            speed: 1000,
            breakpoints: {
                0: {
                    slidesPerView: 1.05,
                    spaceBetween: 23,
                    enabled: true
                },
                575: {
                    slidesPerView: 2.2,
                    spaceBetween: 30,
                    enabled: true
                },
                767: {
                    slidesPerView: 3.2,
                    spaceBetween: 30,
                    enabled: true
                },
                991: {
                    slidesPerView: 4,
                    spaceBetween: 0,
                    enabled: false
                }
            }
        });
    });
}

const range_init = document.querySelector('[data-range]');
if (range_init) {
    if (document.documentElement.clientWidth > 991) {
        set_range_init();
    }

    window.addEventListener('resize', () => {
        if (document.documentElement.clientWidth > 991) {
            set_range_init();
        }
    });

    function set_range_init() {
        let range_items = document.querySelectorAll('[data-range-item]');

        let rangeSliderElement = rangeSlider(range_init, {
            min: 1,
            max: range_init.getAttribute('data-range-max'),
            step: 1,
            value: [0, 1],
            thumbsDisabled: [true, false],
            rangeSlideDisabled: true,
            onInput: function (value, userInteraction) {
                if (range_items.length > 0) {
                    range_items.forEach(item => {
                        if (+item.getAttribute('data-range-item') <= value[1]) item.classList.add('_active')
                        else item.classList.remove('_active');
                    });
                }

                let lines = document.querySelectorAll('[data-range-line]');
                if (lines.length > 0) {
                    lines.forEach(line => {
                        if (+line.getAttribute('data-range-line') === value[1]) line.classList.add('_hidden')
                        else line.classList.remove('_hidden');
                    });
                }

                let boxes = document.querySelectorAll('[data-range-box]');
                if (boxes.length > 0) {
                    boxes.forEach(box => {
                        if (+box.getAttribute('data-range-box') === value[1]) box.classList.add('_active')
                        else box.classList.remove('_active');
                    });
                }
            }
        });
    }
}

const form_field = document.querySelectorAll('[data-form-field]'),
    form_field_target = document.querySelector('[data-form-field-target]');
if (form_field.length > 0 && form_field_target) {
    form_field.forEach(item => {
        item.addEventListener('click', () => {
            let val = item.getAttribute('data-form-field');
            form_field_target.value = val;
        });
    });
}

const tabs = document.querySelectorAll('[data-tab]'),
    tab_content = document.querySelectorAll('[data-tab-content]');
if (tabs.length > 0 && tab_content.length > 0) {
    tabs.forEach(item => {
        item.addEventListener('click', () => {
            let i = item.getAttribute('data-tab');
            tabs.forEach(tab => {
                if (tab.getAttribute('data-tab') == i) tab.classList.add('_active')
                    else tab.classList.remove('_active');
            });

            tab_content.forEach(content => {
                if (content.getAttribute('data-tab-content') == i) content.classList.add('_active')
                    else content.classList.remove('_active');
            });
        });
    });
}

const attachment = document.querySelectorAll('[data-attachment]');
if (attachment.length > 0) {
    attachment.forEach(item => {
        item.addEventListener('change', () => {
            let target = item.nextElementSibling.querySelector('span');
            if ( target ) {
                target.innerHTML = item.files.item(0).name;
            }
        });
    });
}

const samara_map = document.querySelector('#samara-map');
if (samara_map) {
    ymaps.ready(init_samara);
    function init_samara() {
        var myMap = new ymaps.Map("samara-map", {
            center: [53.24261357118036,50.187913499999986],
            zoom: 16
        });

        let myGeoObject = new ymaps.Placemark([53.24261357118036,50.187913499999986], {}, {
            iconLayout: 'default#image',
            iconImageHref: 'assets/theme/img/map.png',
            iconImageSize: [44, 55],
            iconImageOffset: [-22, -55]
        });

        myMap.geoObjects.add(myGeoObject);

        myMap.behaviors.disable('scrollZoom');
        //myMap.controls.remove('default');
    }
}

const moscow_map = document.querySelector('#moscow-map');
if (moscow_map) {
    ymaps.ready(init_samara);
    function init_samara() {
        var myMap = new ymaps.Map("moscow-map", {
            center: [55.759375068986,37.666045499999974],
            zoom: 16
        });

        let myGeoObject = new ymaps.Placemark([55.759375068986,37.666045499999974], {}, {
            iconLayout: 'default#image',
            iconImageHref: '/assets/theme/img/map.png',
            iconImageSize: [44, 55],
            iconImageOffset: [-22, -55]
        });

        myMap.geoObjects.add(myGeoObject);

        myMap.behaviors.disable('scrollZoom');
        //myMap.controls.remove('default');
    }
}

document.addEventListener('fetchit:success', (e) => {
    const { form } = e.detail,
        modal = form.closest('.modal'),
        thankyou = document.querySelector('#modal-thankyou');

    if (modal) close_modals();
    if (thankyou) open_modals(thankyou);
});