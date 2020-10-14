import AnchorJS from 'anchor-js'
const anchors = new AnchorJS()

export default class App {

  constructor(){
    let me = this
    document.addEventListener("turbolinks:load", function(){
      let sidebar = document.querySelector(".sidebar")
      if(sidebar){
        me.scrollSidbar(sidebar)
        me.anchorsPage()
        me.submenuToggle(sidebar)
      }
    })
  }

  scrollSidbar(sidebar){
    let scrollTop = localStorage.getItem('scrollTop') || 0

    sidebar.scrollTo({top: scrollTop})

    sidebar.addEventListener('scroll', function(e) {
      localStorage.setItem('scrollTop', sidebar.scrollTop)
    })
  }

  anchorsPage(){
    anchors.options = {
      icon: "#",
      visible: 'always'
    };
    anchors.add('.section > h3')
  }

  submenuToggle(sidebar){
    document.querySelector(".submenu-toggler").addEventListener('click', function(){
       console.log(sidebar)
       sidebar.closest(".left-nav").classList.toggle("d-none")
    })
  }
}
