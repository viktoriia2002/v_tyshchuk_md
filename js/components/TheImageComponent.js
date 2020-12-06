export default {
    name: "ImageComponent",

    props: ["work"],

    template: `
        <section class="image-player">
            <i class="fas fa-image media-icon"></i><h2>{{work.name}}</h2>
            <img class="picture" src="'images/' + work.source" alt="portfolio image">
            <article>
            <p class="programs">Proframs: {{work.program}}</p>
            <p class="desc">{{work.description}}</p>
            </article>
        </section>
    `
}