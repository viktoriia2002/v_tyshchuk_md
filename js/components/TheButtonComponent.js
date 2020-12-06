export default {
    name: "ButtonComponent",

    props: ['item'],

    template: `
        <div @click="loadMediaComponent" class="button-wrapper" :data-mediatype="item.mediatype">
            <img class="lb-thumb" :src="'images/' + item.image" alt="portfolio thumbnail">
            <p class="lb-thumb-title">{{item.name}}</p>
            <p class="lb-thumb-theme">{{item.title}}</p>       
        </div>
    `,

    methods: {
        loadMediaComponent(event) {
            // debugger;
            this.$emit("setmediatype", this.item);
        }
    }
}
