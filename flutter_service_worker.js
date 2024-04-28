'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "83d043db4fdfe6882fb7f01a09d92b11",
".git/config": "4169e2ee86a4017a3f2b09760955d0a8",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "dc6bd53008f1ace26936cdde1f26718e",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "b2bb56940612eb02962ae45b8a48d857",
".git/logs/refs/heads/main": "7a4bf5715ad5a1457e02d3c8cb3645d4",
".git/logs/refs/remotes/origin/main": "01f9e40cd4a70cf9bb78d8ca2603c7b3",
".git/objects/00/872401d541499f41b800154c6bfa5c529f8e29": "16076fc3308dbaba6d9a780b8148708a",
".git/objects/00/d2c272e6d94ac1de96622a8267bdd1022d5461": "3391f73e993df7d8ea3e1aab6001c5d4",
".git/objects/01/969a196a5a662550bbcf70ff5292a1e8b8d866": "0210f48d0a678ea739d98ad124f5a621",
".git/objects/03/e2c04b33e457a2f42532e6efc428f7a610eefc": "ac9272a51b19852cf7565b7fd113da4b",
".git/objects/07/74c17c0fa7a7e87e24a6935830998d92b52c75": "cd62ee54b7ceea7b2a7804e69b1d9134",
".git/objects/10/c17d47d29bb10ad6299b38589428925d4febd8": "787a8dcbe1c41e9e40731e6d92ba209a",
".git/objects/16/5ce0ddf03a820a38f48cba9aa0c9df9b6e6b79": "71df17c95c3124eada62b59e7dabda78",
".git/objects/1d/20e935a27fac16d74957cc15f4f1f423860ea3": "436d20acf20b29bd0b8aad7e142606d4",
".git/objects/1f/36a99085b5da11e5590d6039d5e77afdf7166d": "767766f304e601a84f1693f2129c6614",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/20/1afe538261bd7f9a38bed0524669398070d046": "82a4d6c731c1d8cdc48bce3ab3c11172",
".git/objects/22/4dd5f8cfb425b0fdf77522a9fb940d2f638a0d": "adf210ade56f1cadf5711e6a1c625ab0",
".git/objects/23/637bc3573701e2ad80a6f8be31b82926b4715f": "5f84f5c437bb2791fdc8411523eae8ff",
".git/objects/31/8fd0a8c3a4942f8d9b7e727c0072b5482c2ba6": "7b075234899ef09dae20c88e860ddc73",
".git/objects/33/b87b1025138f1bee8aacfe3c1837e08ad40100": "b89bc56d9f49b7df04ed9f6958a313e3",
".git/objects/3c/4c554bd67e224fbe89f478fdc31db51c1386f9": "1ebd0a7aef824d8c6b9288a3ed2cb752",
".git/objects/47/e0c88ccd92515327c55f6ba9acf47242f9bcea": "d96aa706f4285e58aca8c9abc9303edd",
".git/objects/4a/39079e580dc9be820cba2fae41238c49eaa798": "ada1a19fea32fbb6719120809b9eae60",
".git/objects/4a/68c16bd50230b359786bfbdd16628fcc5860d9": "6cdb127138dbff2269937cc5d90dc4c3",
".git/objects/55/10bd41593b9328a1721c27863f02bdefef2760": "68ff292a069b510c5263a0f7199cb4d9",
".git/objects/55/a68d9d09bd6b39b9db8712296f8d7fc62b0ebb": "40415baa9e194a881d715452c09a8271",
".git/objects/59/62efb2dffef4c259bda261b128fcab4b659c34": "11e1a7683fedc73b6a0da57ee3c6a112",
".git/objects/5a/5925f07c9681d47f56aa325581c96f5448d49b": "684dba59a6f42dab0c13a25663410eae",
".git/objects/5a/7b05e1be311772247124911182fda78fde2cec": "d38bfbb93663df272dc4920186bd1040",
".git/objects/5d/92c6ff69b1bcd208cd6a27dbfacaae7c371254": "e25a302b6bacdf75ecd582ab23fcc6c1",
".git/objects/61/792a9e8fa84aca546027be4a5e7ae7bdddd982": "02d0b0863673cde0ab5b686506930d0d",
".git/objects/66/cc543513a837a25ee5e65ddda21e4af96f41ad": "ffc267c5dea291a57bd2036bdc4ef63c",
".git/objects/6b/d6ed047a3dbadfbd0714b66a84b46e130517e9": "fef90e991d1d4475d40430eac13d406f",
".git/objects/6f/9cad4c116bc8d72e2497226abb5c05ee64982c": "0d104480d68c1652a53721377a02a882",
".git/objects/71/7117947090611c3967f8681ab1ac0f79bca7fc": "ad4e74c0da46020e04043b5cf7f91098",
".git/objects/71/7809363ed19bdd7e1d78f6e421e40a96bc29e3": "9414a3044cb191cc3f57340f57c3dc93",
".git/objects/7f/7ede75926f59bdb3e226a431db421eeca2d059": "8bf9d2f5edc4188493ef8f02e6613ba4",
".git/objects/80/2fe56be32fb2c848f0d5dd22f0045f94f65864": "701e4532a4c6a0cc50ea94625adaabe9",
".git/objects/82/b349301039f348952b9cba7133da5f8b368ae3": "c4a163166f94ba4d0439667b9046811d",
".git/objects/83/90b42d976e7ef88961306478a6bbb6f779a830": "a7c98d6dae01fe06a21a25b7e8b6f3c9",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/86/005501b80759a5d61cd950094809cd86aa7f5b": "3b8098bd3b6cea7226758315c97542c1",
".git/objects/88/75b4040365ba6428fe9e5b621a2cd8aae6c142": "9bd7aa5127c70a5ea1725de01e58f83f",
".git/objects/89/393697b81abc43c261b65195902fa6d533d5b3": "0649c31f9c2219f60bb4f6e899527a86",
".git/objects/94/bfb1463ad8331bfd687bc751b8920b133da744": "fd2d8c0d844b234856b36b93f652048f",
".git/objects/97/500fbf005ab61945993404f9cbb0fb7f0370a7": "f9ef682661dde7a068336a19ecf826b2",
".git/objects/99/4e9199d8e5dbc804763748e70b64f763a3fb6b": "19dd353d86bbc824b20bfe7bd3a08232",
".git/objects/a0/221728375eccb0ebc9ae88297741606b009b7a": "41ddc14e55efd90b24f75bd02504fc90",
".git/objects/a2/ba96ac5b2be1e569c14a2ebc1333ea0ba51dce": "2ebda743df56db2194638af197ffc529",
".git/objects/a3/6ba4e3325a532cd181f887a4c40a2d8b5dd218": "5a057b91b9f2a002d4a802d9c02c4723",
".git/objects/a3/b18cc21a6b98c0e5156b1b36a31c27ffda6b7f": "34c3bade0a4d4290632b40ec9ff1f574",
".git/objects/a5/de9c1b457f8cf7b62068995ded7a2d165bf1d7": "f07d4f5b645d5fea2b4f56a62c06515f",
".git/objects/a6/59e00463e0ed62a497a207126495512bf62fee": "1b9c3a5403c57bd6db85d23b5ef8741a",
".git/objects/ab/915743e29570ab74ab151b1b164866e937d982": "d7a5eebd6f1f84e93bdedc1ca224b0aa",
".git/objects/af/742adee0a85dd21ea96cbd84182e30e085d6cf": "aa25b932ec40efacb1efe27e7cf25d82",
".git/objects/b2/290486a0b6b728db14af9873191a2b9bed374e": "33d63a64f0568aa0f75768841c489480",
".git/objects/b5/0254288cc6319d153c4af1d64870d95ee2436f": "468a6506934a07c970a4739eae75eedd",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/be/8aacdbbf40aa56612d7fc65f3e32163d77b514": "f7e8e7ea93bce549d5b33baf3bef5859",
".git/objects/c5/f4bc2a4da91586f3005813077f0d0aa9040f82": "3191028b787554cee4652f5050144bff",
".git/objects/c6/897d6802711e55599efa0f1502418071a1ebaa": "7a7fde1bddccff2490c5aa1829091acb",
".git/objects/c7/7d77ff105e9801553e71cf55fabe4c559d3153": "7ff600fab769f40d5576cd07e98515b0",
".git/objects/c9/34cd22bbca0b4c98eb6036187b99bc7c704f7b": "d559b3f2de0cba4e5a4646054e4af52c",
".git/objects/c9/556fc1e8d3db7263daa82980bfcac6ec3bc72f": "1711d1035539c401ff35554f39ea54b1",
".git/objects/d1/75571f76df9c0d845737e9be7ee88c551c1358": "031e69ee3578f235e64313feed30d796",
".git/objects/d2/ce8ab8e909f8c1c16f4a259e51bf42b53d4f89": "a4dd32f714eedf1b43b87e2456a59d5a",
".git/objects/d3/bdfec5ac72653ee10e1b1ea509ce003447259f": "d50ff3279e709595fe7930b7c48c0dfb",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d5/b52f5ea9a2686c79a9b0801223981e2b8381d5": "7997b2bf1bd941ba1a41873f66b8ea6e",
".git/objects/d5/ba8148eae40e01f857c8ae4e00fc15867f4341": "111e796d900de4121d1a4ee24e8b4732",
".git/objects/d7/6ca795e346e6e56b562bfb7202f686f706242e": "ed3d6e90c556fac5f26d0e07fe2c14a4",
".git/objects/dd/141fe4f3d353a67235e16d50d86abfc5f862f2": "040a54d491a1d674515adb8877422fc7",
".git/objects/e4/c6a8206fc7b020b0e664da56af538c081ab115": "c566259c625ef85233729bacdb34cdd8",
".git/objects/e8/2c5850db3a3482d0c954a4dc122c02de555ce7": "d357cd906b3805bf81477f5527cca086",
".git/objects/f0/9724ee15803c60280996e9c8be4daffa18c4ea": "7a7615ceeaf21ca3c7fe3026105a54af",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f2/eefa22b8289194a8d0da8c3406be117945d283": "838bc5414d3bc14fe090ab318e2ddb99",
".git/objects/fb/d9f22a0e59fae3b28da67240e9710d45aca3c2": "96749c10ee9ab0ca59480d06ac0af926",
".git/objects/fe/3914bcf3baf9d87a873a444cac8aaf9dcd54c1": "372add7dd6cdabc32b9333e8d66bff72",
".git/objects/fe/a25cf5405fdb7af502797e1360dfe23b31e7d8": "35fbc6815496b516b45ee41720573d4c",
".git/refs/heads/main": "c4f23987148d353c62c98b45d163e410",
".git/refs/remotes/origin/main": "c4f23987148d353c62c98b45d163e410",
"assets/AssetManifest.bin": "bed67a27d64f9398b2735c27b4937c09",
"assets/AssetManifest.bin.json": "2b76e37893c98b1117178669c9d66e86",
"assets/AssetManifest.json": "b259ac90ad820019133dcc7d7c11c3f0",
"assets/assets/icons/behance.svg": "35ad2d47e647d0b168e7707b2984c6b5",
"assets/assets/icons/check.svg": "4220c82511cc1dfb40b8bba7d25c5f55",
"assets/assets/icons/download.svg": "628700a3031424d215a441fab2da1731",
"assets/assets/icons/dribble.svg": "d392567c5678d42472d2c7b766268101",
"assets/assets/icons/fb.png": "0cee121e21939862079bcd586296272c",
"assets/assets/icons/fb.svg": "cfa361e85a96f22a1e7adb0375bdb109",
"assets/assets/icons/github.svg": "9226aa209923e38c0a6ddcb236e2bc68",
"assets/assets/icons/linkedin.svg": "5b2195ddf9e879047dd8a163c4194920",
"assets/assets/icons/twitter.svg": "a4a0163fef48a4247a305528c07bc4fa",
"assets/assets/images/bg.jpeg": "c6449162dc3940daa640a43101cfd66c",
"assets/assets/images/display-Image.jpeg": "416f8b098935e1b1ca0d3d7e17a9cecf",
"assets/assets/images/linkedInProfile.png": "26901c56aaf6194b5550ca958ddee1bf",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "8d1f1f0d26a0ac9eb3a8de5d35b32e82",
"assets/NOTICES": "d9c9aab33af6b3498d917e2f0389ef1e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "17ee8e30dde24e349e70ffcdc0073fb0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/videos/covid.mp4": "a330be649c56dc834c2393290cd77408",
"assets/videos/CRUD.mp4": "c4071c2925f31a929e167d1bf5e7bccf",
"assets/videos/ecommerce.mp4": "4f0b97442e29fc9821c07569d73983a7",
"assets/videos/GoogleMapRoutes.mp4": "622475141e4da3f4b5a36b68655508d4",
"assets/videos/movieinfo.mp4": "742b7a2edc84d568ba34c8039415ed9d",
"assets/videos/payment.mp4": "64f5cb66ea23131d24d90151666b4908",
"assets/videos/socialmedia.mp4": "6b3a753add0cb599b12133b53a77d8fa",
"assets/videos/StitchCraft.mp4": "b282f742b58c3ade9dcb16e00205f1b5",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "e7a684ca8c93c3f227bd6adedd665098",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "9d8a7fcd511f56b944c6c60f064a39be",
"icons/Icon-512.png": "73bad981d28a82e027064f097c430ebf",
"icons/Icon-maskable-192.png": "9d8a7fcd511f56b944c6c60f064a39be",
"icons/Icon-maskable-512.png": "73bad981d28a82e027064f097c430ebf",
"index.html": "da5fd3a54734c538cb126ca67f517ab2",
"/": "da5fd3a54734c538cb126ca67f517ab2",
"main.dart.js": "7b07b72e27d2b40c08a8744847db07ac",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
