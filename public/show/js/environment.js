/**
 * Created by debian on 16-9-18.
 */

var Environment = function(){

    var scope = this;

    this.scene = {
        obj:null,
        add:function(obj){
            this.obj.add(obj);
        },
        init:function(){
            this.obj = new THREE.Scene();
        }
    };


    this.camera = {
        obj:null,
        setPosition:function(x,y,z){
            this.obj.position.set(x, y, z);
        },
        setAspect:function(aspect){
            //this.obj.aspect = window.innerWidth / window.innerHeight;
            this.obj.aspect = aspect;
        },
        init:function(){
            this.obj = new THREE.PerspectiveCamera( 45, window.innerWidth / window.innerHeight, 100, 2000000 );
        }
    };


    this.renderer = {
        obj:null,
        init:function(){
            this.obj = new THREE.WebGLRenderer();
        },
        setSize:function(width,height){
            //renderer.setSize( window.innerWidth, window.innerHeight );
            this.obj.setSize( width, height );
        },
        setPixelRatio:function(devicePixelRatio){
            //renderer.setPixelRatio( window.devicePixelRatio );
            this.obj.setPixelRatio(devicePixelRatio);
        },
        render:function(){
            this.obj.render(scope.scene.obj, scope.camera.obj);
        },
        getDomElement:function(){
            return this.obj.domElement;
        }
    }
    



    //init
    this.scene.init();
    this.camera.init();
    this.renderer.init();

}