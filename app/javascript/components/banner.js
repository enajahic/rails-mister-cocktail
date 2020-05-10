import Typed from 'typed.js';

const loadDynamicBannerText = () => {
    new Typed('#banner-typed-text', {
    strings: ["Find your cocktail...", "We have perfect cocktail for everybody.", "We serve our cocktails cold.", "Do not allow children to mix drinks." ],
    typeSpeed: 50,
    loop: true
  });
  
}

export { loadDynamicBannerText };