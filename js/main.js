import LightboxComponent from "./components/TheLightboxComponent.js";
import ButtonComponent from "./components/TheButtonComponent.js";
import { fetchData } from "./components/TheDataMiner.js";

(() => {
    const myVM = new Vue({
        data: {
            currentItem: {},
            mediaType: "",
            mediaCollection: []
        },

        mounted: function(){
            fetchData('./includes/index.php').then(data => {
                this.mediaCollection = data;
            })
        },
        methods: {
            setComponent(project) {
                // debugger;
                this.mediaType = project.mediatype;
                this.currentItem = project;
                 
                document.querySelector('.lightbox').classList.add('show-lightbox');
               }
            },


        components: {
            "lightbox": LightboxComponent,
            "buttoncomponent": ButtonComponent
        }
    }).$mount("#app");
})();
