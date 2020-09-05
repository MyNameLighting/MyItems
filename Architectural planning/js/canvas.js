   //获取HTMLCanvasElement
   let canvasEle = document.getElementById("canvas");

   //设置属性
   canvasEle.width = window.innerWidth;
   canvasEle.height = 250;

   //获取CanvasRenderingContext2D对象
   let ctx = canvasEle.getContext("2d");

   //创建圆的类
   class Circle {
     //构造函数
     constructor(x, y, radius) {
       //属性赋值
       this.x = x;
       this.y = y;
       this.radius = radius;
       this.xDistance =
         Math.random() * 2 > 1 ? -Math.random() * 2 : Math.random() * 2;
       this.yDistance =
         Math.random() * 2 > 1 ? -Math.random() * 2 : Math.random() * 2;
     }
     //绘制方法
     draw() {
       //判断X轴是否小于半径(代表左侧的极限值)
       if (this.x < this.radius) {
         this.x = this.radius;
       }
       //判断右侧的极限值
       if (this.x + this.radius > canvasEle.width) {
         this.x = canvasEle.width - this.radius;
       }
       //判断顶部的极限值
       if (this.y < this.radius) {
         this.y = this.radius;
       }
       //判断底部的极限值
       if (this.y + this.radius > canvasEle.height) {
         this.y = canvasEle.height - this.radius;
       }

       //开始新的路径
       ctx.beginPath();

       //绘制圆弧
       ctx.arc(this.x, this.y, this.radius, 0, 2 * Math.PI);

       ctx.fillStyle = "#f40";

       //填充
       ctx.fill();
     }
     //移动方法
     move() {
       this.x += this.xDistance;
       this.y += this.yDistance;
       //移动到最"右"侧或最"左"侧
       if (this.x > canvasEle.width - this.radius || this.x < this.radius) {
         this.xDistance = -this.xDistance;
       }
       // //移动到最"左"侧
       // if (this.x < this.radius) {
       //   this.xDistance = -this.xDistance;
       // }
       //移动到最"顶"部
       // if (this.y < this.radius) {
       //   this.yDistance = -this.yDistance;
       // }
       //移动到最"底"部或最"顶"部

       if (this.y > canvasEle.height - this.radius || this.y < this.radius) {
         this.yDistance = -this.yDistance;
       }
     }
   }

   //存储所有圆对象
   let sequence = [];
   //保存住圆对象的数量
   let number = 100;

   //初始化
   function initialize() {
     for (let n = 0; n < number; n++) {
       let x = Math.floor(Math.random() * canvasEle.width);
       let y = Math.floor(Math.random() * canvasEle.height);
       //产生半径为2~7的圆
       let radius = Math.ceil(Math.random() * 3 + 1);
       //创建园对象
       circle = new Circle(x, y, radius);
       //将圆对象添加到squence数组中
       sequence.push(circle);
     }
   }

   function animation() {
     //清理整个画布
     ctx.clearRect(0, 0, canvasEle.width, canvasEle.height);
     for (let n = 0; n < sequence.length; n++) {
       let circle = sequence[n];
       circle.draw();
       circle.move();
     }
     connect();
     window.requestAnimationFrame(animation);
   }

   //连接
   function connect() {
     for (let n = 0; n < sequence.length; n++) {
       for (let i = n + 1; i < sequence.length; i++) {
         let xDistance = sequence[n].x - sequence[i].x
         let yDistance = sequence[n].y - sequence[i].y
         let distance = Math.sqrt(Math.pow(xDistance,2) + Math.pow(yDistance,2));
         if(distance <= 120){
         //开始新的路径
         ctx.beginPath();
         ctx.moveTo(sequence[n].x, sequence[n].y);
         ctx.lineTo(sequence[i].x, sequence[i].y);
         ctx.strokeStyle = "rgba(140,85,31,.4)";
         //描边
         ctx.stroke();
         }
       }
     }
   }

   //调用初始化
   initialize();
   console.log(sequence);
   //调用动画
   animation();
   //console.log(circle);