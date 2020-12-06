import Video from "./TheVideoComponent.js";
import Graphic from "./TheImageComponent.js";

export default {
    props: ["item", "mediatype"],

    template:`
    <section class="lightbox">
        <span class="lb-close" @click="closelb">x</span>
       
        <component :is="currentComponent" :work="item"></component>

    </section>
    `,

    computed: {
        currentComponent: function(){
            return this.mediatype;
        }
    },
    components:{
        Video,
        Graphic
    },
    methods:{
        closelb() {
            document.querySelector('.lightbox').classList.remove('show-lightbox');
        }
    }
}