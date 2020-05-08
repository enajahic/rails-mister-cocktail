import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Find your coctail", "We have perfect coctail for everybody", "We serve our coctails cold"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };