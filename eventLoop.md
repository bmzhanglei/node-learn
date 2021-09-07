
[全面理解Event Loop](https://blog.csdn.net/qq_31967985/article/details/110310685)

## 全面理解Event Loop
事件循环，是指浏览器或Node环境的一种解决javaScript单线程运行时不会阻塞的一种机制，也就是实现异步的原理。作为一种单线程语言，javascript本身是没有异步这一说法的，是由其宿主环境提供的

## Event Loop知识铺垫
javascript代码运行时，任务被分为两种，宏任务（MacroTask/Task）和微任务（MircoTask）；Event Loop在执行和协调各种任务时也将任务队列分为Task Queue和MircoTak Queue分别对应管理宏任务（MacroTask/Task）和微任务（MircoTask）；作为队列，Task Queue和MircoTak Queue也具备队列特性：先进先出（FIFO—first in first out）

现在浏览器是多进程的 Multi-process
### 浏览器端的 Event Loop
 变量放在栈里面
 对象放在堆里面

 微任务(顺序)
 1. process.nextTick(node 独有) 
 2. Process.then()
 3. Object.observe
 4. MutationObserver