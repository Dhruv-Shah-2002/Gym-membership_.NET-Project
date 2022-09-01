import * as THREE from 'https://cdn.jsdelivr.net/npm/three@0.124/build/three.module.js';

import { OrbitControls } from 'https://cdn.jsdelivr.net/npm/three@0.124/examples/jsm/controls/OrbitControls.js';


const scene = new THREE.Scene();
const camera = new THREE.PerspectiveCamera(30, window.innerWidth / window.innerHeight, 0.1, 60);

camera.position.set(6, 0, 0);

const renderer = new THREE.WebGL1Renderer({
    alpha: true,
    antialias: true,
    canvas: document.querySelector("#bg")
});

renderer.setPixelRatio(window.devicePixelRatio);
renderer.setSize(window.innerWidth, window.innerHeight);
renderer.render(scene,camera);

//document.getElementById('test').appendChild(renderer.domElement);
//document.append.child(renderer.domElement);
const controls = new OrbitControls(camera, renderer.domElement);

//World
const worldTexture = new THREE.TextureLoader().load("world.jpg");

const worldGeometry = new THREE.SphereGeometry(1, 40, 40);

const worldMaterial = new THREE.MeshBasicMaterial({
    map: worldTexture
})

const world = new THREE.Mesh(worldGeometry, worldMaterial);

scene.add(world);

//Clouds
const cloudTexture = new THREE.TextureLoader().load("https://assets.codepen.io/141041/small-world-clouds.png");
const cloudGeometry = new THREE.SphereGeometry(1.05, 40, 40);
const cloudMaterial = new THREE.MeshBasicMaterial({
    map: cloudTexture,
    transparent: true
})

const clouds = new THREE.Mesh(cloudGeometry, cloudMaterial);
scene.add(clouds);


//Moon
const moonTexture = new THREE.TextureLoader().load("moon.jpg");
const moonGeometry = new THREE.SphereGeometry(0.25, 20, 20);
const moonMaterial = new THREE.MeshBasicMaterial({
    map: moonTexture
}
)

const moon = new THREE.Mesh(moonGeometry, moonMaterial)
var pivot = new THREE.Object3D()
scene.add(pivot)
pivot.add(moon)
moon.position.setX(2)




function animate() {
    requestAnimationFrame(animate);
    world.rotation.y += 0.0020;
    clouds.rotation.y -= 0.001;
    pivot.rotation.y -= 0.0023;
    renderer.render(scene, camera);
}
animate();


window.addEventListener('resize', () => {
    camera.aspect = window.innerWidth / window.innerHeight

    camera.updateProjectionMatrix()

    renderer.setSize(window.innerWidth, window.innerHeight)
});

