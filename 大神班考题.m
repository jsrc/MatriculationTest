友情提醒：
* 同学们一定要诚信考试哈！
* 如果作弊通过了这场考试，去到大神班可能也是浪费自己时间哈
* 因为大神班需要有扎实的C\OC基础才能完全听懂、消化吸收
* 这也是对自己负责

特别注意：
* 注释、空格、变量名、类名、方法名、函数名、参数名、参数类型、返回值类型的设计也影响着你的考试成绩哦！
* 简单题答案以"注释"的形式直接写在对应题目下面
* 编程题需要参考"编程题答题格式.doc"答题

一、简单题(每题5分)
1.下面这些方法的方法名是什么？
* - (void)person
* - (void)personWithAge;
* - (void)personWithAge:(int)age;
* - (void)personWithAge:(int)age name:(NSString *)name;
/* 1:person
   2:personWithAge
   3:personWithAge:
   4:personWithAge: name:
*/

2.NSArray和NSSet有什么使用区别？
/*
 NSArray是有序的，NSSet是无序的
 NSSet中不能存储重复的数据，可以用来除去重复的值
 */
3.定义一个无参无返回值的block变量，并且调用这个block
/*
 //1:定义block
 void (^myBlock)();
 //2:调用
 myBlock=^{
 NSLog(@"block~");
 };
 myblock();
 */
4.定义一个有参有返回值的block变量，并且调用这个block
/*
 //1:定义block
 int (^AddBlock)(int,int);
 //2:调用block
 AddBlock=^(int a,int b)
 {
 return a+b;
 };
 int c=AddBlock(1,2);
 */
5.你知道Swift是什么吗？谈谈对它的目前了解
//Swift是苹果公司新发布了一种编程语言，它继承了C语言以及Objective-C的特性，且克服了C语言的兼容性问题。目前能跟oc进行混合编译。
6.强引用和弱引用有什么区别？
/*
 __strong：强引用, 只要没有强指针指向一个对象，那么这个对象就立即被回收。
 __weak：弱引用，而弱指针不影响对象的回收，可以避免循环引用。
 */
7.strong、weak、assign各自的使用场合是什么？
/*
 assign:用于基本数据类型和id。
 strong:用于修饰强指针对象（通常是类的属性）。
 weak:用于修饰弱指针对象（用于避免对象的循环引用。通常uibutton,uilabel等控件的对象都用weak修饰）
 */
8.分类（Category）有什么作用？
/*
 可以在不改变类的前提下动态地为已经存在的类添加新的方法，
 使用category对已有的类进行扩展时，可以不用添加子类。
 */
9.谈谈你对self和super的理解
/*
 self:谁调用方法，self就指向谁
 在动态方法中调用是指调用该方法的对象
 在静态方法中表示类名
 super:是基于类的，指向这个类（调用super的类）的父类，当子类需要调用父类的方法时，会用到Super关键字。
 */
10.编译器遇到下面代码会自动生成哪些代码？
self.age = 20;
/*
 调用set方法
 [self setAge:20];
 */
int age = self.age;
/*
 调用get方法
 int age=[self age];
 */
NSArray *names = @[@"mj", @"jj", @"jay"];
/*
 NSArray *names=[[NSArray alloc] initWithObjects:@"mj",@"jj",@"jay",nil];
 */
id money = @10;
/*
 id money=[NSNumber numberWithInt:10];
*/

二、编程题(每题10分)
1.用2种不同的思路编写函数来计算下面式子
1 + 2 + 3 + 4 + ... + n (n >= 1)
（PS:一共要编写2个函数，仅仅是在for\while\do while之间更换不算新的思路）

2.使用Category给某类（哪个类自己思考）增加一个方法，用来完成一下功能：假设一个OC可变数组数组存放着很多整数字符串，比如@"10"、@"20"。要求调用完这个方法后，这个数组里面是数字字符串是升序排列的（从小到大排列）

3.使用Category给所有OC对象增加一个run方法（对象方法），然后在run方法中NSLog打印对象本身

4.使用Category给NSString类增加以下功能(需要用到的方法自己查资料或者猜)
1> 计算英文字母的个数(比如@"324fdsfk656HF99Jp"调用方法后返回的是9)
2> 字符串反转(比如@"abc"调用方法后返回@"cba")
3> 去除字符串两端空格（比如@"  jack rose "调用方法后返回@"jack rose"）
4> 截取网站域名中www.和.com之间的字符串（比如@"http://www.baidu.com"调用方法返回@"baidu"）

5.定义一个书本类，需要有名字，价格，出版年份（比如2014）三个成员属性，创建5个书本对象，属性可以任意值，但名字不要使用中文
1) 增加一个便利构造方法（工厂方法），用于快速创建对象
2) 使用NSLog直接输出书本对象时，要保证输出字符串格式为：这本书叫做xx, 价格是xx, 出版年份是xx.'
3) 对5个书本对象按照"出版年份"—>"价格"->"名字"优先级从小到大排序（出版年份相同按照价格排序，价格同按照名字排序序）

