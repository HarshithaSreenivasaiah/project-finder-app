import 'package:flutterscr/models/project_model.dart';
import 'package:flutterscr/res/images.dart';

final pythonProjects = [
  ProjectModel(
    projectname: "Linear Search",
    description:
        ''' Given an array arr[] of n elements, write a function to search a given element x in arr[].''',
    image: AppImages.python,
    sourcecode: ''' 

  # Python3 code to linearly search x in arr[].
# If x is present then return its location,
# otherwise return -1
 
 
def search(arr, n, x):
 
    for i in range(0, n):
        if (arr[i] == x):
            return i
    return -1
 
 
# Driver Code
arr = [2, 3, 4, 10, 40]
x = 10
n = len(arr)
 
# Function call
result = search(arr, n, x)
if(result == -1):
    print("Element is not present in array")
else:
    print("Element is present at index", result)
   
    ''',
  ),
  ProjectModel(
    projectname: "Binary Search",
    description:
        'Given a sorted array arr[] of n elements, write a function to search a given element x in arr[] and return the index of x in the array.',
    image: AppImages.python,
    sourcecode: '''
    # Python3 Program for recursive binary search.
 
# Returns index of x in arr if present, else -1
 
 
def binarySearch(arr, l, r, x):
 
    # Check base case
    if r >= l:
 
        mid = l + (r - l) // 2
 
        # If element is present at the middle itself
        if arr[mid] == x:
            return mid
 
        # If element is smaller than mid, then it
        # can only be present in left subarray
        elif arr[mid] > x:
            return binarySearch(arr, l, mid-1, x)
 
        # Else the element can only be present
        # in right subarray
        else:
            return binarySearch(arr, mid + 1, r, x)
 
    else:
        # Element is not present in the array
        return -1
 
 
# Driver Code
arr = [2, 3, 4, 10, 40]
x = 10
 
# Function call
result = binarySearch(arr, 0, len(arr)-1, x)
 
if result != -1:
    print("Element is present at index % d" % result)
else:
    print("Element is not present in array")
 ''',
  ),
  ProjectModel(
    projectname: "Dice Rolling Simulator in Python",
    description:
        'Python Project Idea – The dice rolling simulator will imitate the experience of rolling a dice.It will generate a random number and the user can play again and again to get a number from the dice until the user decides to quit the program.Python Project Idea – The email slicer is a handy program to get the username and domain name from an email address.',
    image: AppImages.python,
    sourcecode: '''
  # Python3 code to find largest three
# elements in an array
import sys
 
# Function to print three largest
# elements
def print3largest(arr, arr_size):
 
    # There should be atleast three
    # elements
    if (arr_size < 3):
     
        print(" Invalid Input ")
        return
     
    third = first = second = -sys.maxsize
     
    for i in range(0, arr_size):
     
        # If current element is greater
        # than first
        if (arr[i] > first):
         
            third = second
            second = first
            first = arr[i]
         
 
        # If arr[i] is in between first
        # and second then update second
        elif (arr[i] > second):
         
            third = second
            second = arr[i]
         
        elif (arr[i] > third):
            third = arr[i]
     
    print("Three largest elements are",
                  first, second, third)
 
# Driver program to test above function
arr = [12, 13, 1, 10, 34, 1]
n = len(arr)
print3largest(arr, n) ''',
  ),
  ProjectModel(
    projectname: "Mad Libs Generator Python Game",
    description:
        'Python Project – Mad libs generator is a fun game for kids.This is a project for absolute beginners.The project will randomly create stories with a few customizations.You can ask users to input a few words like name, action, etc, and then it will modify the stories using your words.',
    image: AppImages.python,
    sourcecode: '''
    # Python3 code to find largest three
# elements in an array
import sys
 
# Function to print three largest
# elements
def print3largest(arr, arr_size):
 
    # There should be atleast three
    # elements
    if (arr_size < 3):
     
        print(" Invalid Input ")
        return
     
    third = first = second = -sys.maxsize
     
    for i in range(0, arr_size):
     
        # If current element is greater
        # than first
        if (arr[i] > first):
         
            third = second
            second = first
            first = arr[i]
         
 
        # If arr[i] is in between first
        # and second then update second
        elif (arr[i] > second):
         
            third = second
            second = arr[i]
         
        elif (arr[i] > third):
            third = arr[i]
     
    print("Three largest elements are",
                  first, second, third)
 
# Driver program to test above function
arr = [12, 13, 1, 10, 34, 1]
n = len(arr)
print3largest(arr, n)
    ''',
  ),
  ProjectModel(
    projectname: "Message Encode Decode in Python Project.",
    description:
        'Python Project – Secure sensitive information by encoding messages.The objective of this project is to encode (or encrypt) and decode messages using a common key.This Python project will be built using Tkinter and base64 library.',
    image: AppImages.python,
    sourcecode: '''
   # Python3 code to find largest three
# elements in an array
import sys
 
# Function to print three largest
# elements
def print3largest(arr, arr_size):
 
    # There should be atleast three
    # elements
    if (arr_size < 3):
     
        print(" Invalid Input ")
        return
     
    third = first = second = -sys.maxsize
     
    for i in range(0, arr_size):
     
        # If current element is greater
        # than first
        if (arr[i] > first):
         
            third = second
            second = first
            first = arr[i]
         
 
        # If arr[i] is in between first
        # and second then update second
        elif (arr[i] > second):
         
            third = second
            second = arr[i]
         
        elif (arr[i] > third):
            third = arr[i]
     
    print("Three largest elements are",
                  first, second, third)
 
# Driver program to test above function
arr = [12, 13, 1, 10, 34, 1]
n = len(arr)
print3largest(arr, n)
    ''',
  ),
];
final javaProjects = [
  ProjectModel(
    projectname: 'Program to find sum of elements in a given array',
    description:
        'Create a local variable max to store the maximum among the list',
    image: AppImages.java,
    sourcecode: '''class Test
{
     static int arr[] = {12,3,4,15};
       
     // method for sum of elements in an array 
     static int sum()
     {
         int sum = 0; // initialize sum
         int i;
        
         // Iterate through all elements and add them to sum
         for (i = 0; i < arr.length; i++)
            sum +=  arr[i];
        
         return sum;
     }
       
     // Driver method
     public static void main(String[] args) 
     {
         System.out.println("Sum of given array is " + sum());
        }
 } ''',
  ),
  ProjectModel(
    projectname: 'Program to find largest element in an array',
    description:
        'Create a local variable max to store the maximum among the list',
    image: AppImages.java,
    sourcecode: '''class Test
{
     static int arr[] = {10, 324, 45, 90, 9808};
      
     // Method to find maximum in arr[]
     static int largest()
     {
         int i;
          
         // Initialize maximum element
         int max = arr[0];
       
         // Traverse array elements from second and
         // compare every element with current max 
         for (i = 1; i < arr.length; i++)
             if (arr[i] > max)
                 max = arr[i];
       
         return max;
     }
      
     // Driver method
     public static void main(String[] args)
     {
         System.out.println("Largest in given array is " + largest());
        }
 } ''',
  ),
  ProjectModel(
    projectname: 'Find the largest three distinct elements in an array',
    description:
        'Given an array with all distinct elements, find the largest three elements. Expected time complexity is O(n) and extra space is O(1). ',
    image: AppImages.java,
    sourcecode: '''class PrintLargest {
    /* Function to print three largest elements */
    static void print3largest(int arr[], int arr_size)
    {
        int i, first, second, third;
 
        /* There should be atleast three elements */
        if (arr_size < 3) {
            System.out.print(" Invalid Input ");
            return;
        }
 
        third = first = second = Integer.MIN_VALUE;
        for (i = 0; i < arr_size; i++) {
            /* If current element is greater than
            first*/
            if (arr[i] > first) {
                third = second;
                second = first;
                first = arr[i];
            }
 
            /* If arr[i] is in between first and
            second then update second  */
            else if (arr[i] > second) {
                third = second;
                second = arr[i];
            }
 
            else if (arr[i] > third)
                third = arr[i];
        }
 
        System.out.println("Three largest elements are " + first + " " + second + " " + third);
    }
 
    /* Driver program to test above function*/
    public static void main(String[] args)
    {
        int arr[] = { 12, 13, 1, 10, 34, 1 };
        int n = arr.length;
        print3largest(arr, n);
    }
}
/*This code is contributed by Prakriti Gupta
and edited by Ayush Singla(@ayusin51)*/ ''',
  ),
  ProjectModel(
    projectname:
        'Find all elements in array which have at-least two greater elements',
    description:
        " The naive approach is to run two loops and check one by one element of array check that array elements have at-least two elements greater than itself or not. If it’s true then print array element.  ",
    image: AppImages.java,
    sourcecode: '''import java.util.*;
import java.io.*;
 
class GFG
{
     
static void findElements(int arr[],
                            int n)
{
    // Pick elements one by one
    // and count greater elements.
    // If count is more than 2,
    // print that element.
    for (int i = 0; i < n; i++)
    {
        int count = 0;
         
        for (int j = 0; j < n; j++)
            if (arr[j] > arr[i])
                count++;
 
        if (count >= 2)
        System.out.print(arr[i] + " ");
    }
}
 
// Driver code
public static void main(String args[])
{
    int arr[] = { 2, -6 ,3 , 5, 1};
    int n = arr.length;
    findElements(arr, n);
}
}
  ''',
  ),
  ProjectModel(
    projectname: 'Program for Mean and median of an unsorted array',
    description:
        'Median of a sorted array of size n is defined as the middle element when n is odd and average of middle two elements when n is even.',
    image: AppImages.java,
    sourcecode: '''
// Java program to find mean
// and median of an array
import java.util.*;
 
class GFG
{
    // Function for calculating mean
    public static double findMean(int a[], int n)
    {
        int sum = 0;
        for (int i = 0; i < n; i++)
            sum += a[i];
 
        return (double)sum / (double)n;
    }
 
    // Function for calculating median
    public static double findMedian(int a[], int n)
    {
        // First we sort the array
        Arrays.sort(a);
 
        // check for even case
        if (n % 2 != 0)
            return (double)a[n / 2];
 
        return (double)(a[(n - 1) / 2] + a[n / 2]) / 2.0;
    }
 
    // Driver code
    public static void main(String args[])
    {
        int a[] = { 1, 3, 4, 2, 7, 5, 8, 6 };
        int n = a.length;
       
        // Function call
        System.out.println("Mean = " + findMean(a, n));
        System.out.println("Median = " + findMedian(a, n));
    }
} ''',
  ),
];
final cppProjects = [
  ProjectModel(
    projectname: 'Program to find largest element in an array',
    description:
        'Create a local variable max to store the maximum among the list',
    image: AppImages.cpp,
    sourcecode: '''#include <bits/stdc++.h>
using namespace std;
 
int largest(int arr[], int n)
{
    int i;
     
    // Initialize maximum element
    int max = arr[0];
 
    // Traverse array elements
    // from second and compare
    // every element with current max
    for (i = 1; i < n; i++)
        if (arr[i] > max)
            max = arr[i];
 
    return max;
}
 
// Driver Code
int main()
{
    int arr[] = {10, 324, 45, 90, 9808};
    int n = sizeof(arr) / sizeof(arr[0]);
    cout << "Largest in given array is "
         << largest(arr, n);
    return 0;
} ''',
  ),
  ProjectModel(
    projectname: 'Find the largest three distinct elements in an array',
    description:
        'Given an array with all distinct elements, find the largest three elements. Expected time complexity is O(n) and extra space is O(1). ',
    image: AppImages.cpp,
    sourcecode: ''' #include <bits/stdc++.h>
using namespace std;
 
// Function to print three largest elements
void print3largest(int arr[], int arr_size)
{
    int first, second, third;
 
    // There should be atleast three elements
    if (arr_size < 3)
    {
        cout << " Invalid Input ";
        return;
    }
 
    third = first = second = INT_MIN;
    for(int i = 0; i < arr_size; i++)
    {
         
        // If current element is
        // greater than first
        if (arr[i] > first)
        {
            third = second;
            second = first;
            first = arr[i];
        }
 
        // If arr[i] is in between first
        // and second then update second
        else if (arr[i] > second)
        {
            third = second;
            second = arr[i];
        }
 
        else if (arr[i] > third)
            third = arr[i];
    }
 
    cout << "Three largest elements are "
        << first << " " << second << " "
        << third << endl;
}
 
// Driver code
int main()
{
    int arr[] = { 12, 13, 1, 10, 34, 1 };
    int n = sizeof(arr) / sizeof(arr[0]);
     
    print3largest(arr, n);
    return 0;''',
  ),
  ProjectModel(
    projectname:
        'Find all elements in array which have at-least two greater elements',
    description:
        'Given an array of n distinct elements, the task is to find all elements in array which have at-least two greater elements than themselves.',
    image: AppImages.cpp,
    sourcecode: ''' #include<bits/stdc++.h>
using namespace std;
 
void findElements(int arr[], int n)
{
    // Pick elements one by one and
    // count greater elements. If
    // count is more than 2, print
    // that element.
    for (int i = 0; i < n; i++)
    {
        int count = 0;
        for (int j = 0; j < n; j++)
            if (arr[j] > arr[i])
                count++;
 
        if (count >= 2)
            cout << arr[i] << " ";
    }
}
 
// Driver code
int main()
{
    int arr[] = { 2, -6 ,3 , 5, 1};
    int n = sizeof(arr) / sizeof(arr[0]);
    findElements(arr, n);
    return 0;
}''',
  ),
  ProjectModel(
    projectname: 'Program for Mean and median of an unsorted array',
    description: 'Given n size unsorted array, find it’s mean and median. ',
    image: AppImages.cpp,
    sourcecode: '''#include <bits/stdc++.h>
using namespace std;
 
// Function for calculating mean
double findMean(int a[], int n)
{
    int sum = 0;
    for (int i = 0; i < n; i++)
        sum += a[i];
 
    return (double)sum / (double)n;
}
 
// Function for calculating median
double findMedian(int a[], int n)
{
    // First we sort the array
    sort(a, a + n);
 
    // check for even case
    if (n % 2 != 0)
        return (double)a[n / 2];
 
    return (double)(a[(n - 1) / 2] + a[n / 2]) / 2.0;
}
 
// Driver code
int main()
{
    int a[] = { 1, 3, 4, 2, 7, 5, 8, 6 };
    int n = sizeof(a) / sizeof(a[0]);
   
    // Function call
    cout << "Mean = " << findMean(a, n) << endl;
    cout << "Median = " << findMedian(a, n) << endl;
    return 0;
} ''',
  ),
  ProjectModel(
    projectname: 'Program for Mean and median of an unsorted array',
    description: 'Given n size unsorted array, find it’s mean and median. ',
    image: AppImages.cpp,
    sourcecode: '''#include <bits/stdc++.h>
using namespace std;
 
// Function for calculating mean
double findMean(int a[], int n)
{
    int sum = 0;
    for (int i = 0; i < n; i++)
        sum += a[i];
 
    return (double)sum / (double)n;
}
 
// Function for calculating median
double findMedian(int a[], int n)
{
    // First we sort the array
    sort(a, a + n);
 
    // check for even case
    if (n % 2 != 0)
        return (double)a[n / 2];
 
    return (double)(a[(n - 1) / 2] + a[n / 2]) / 2.0;
}
 
// Driver code
int main()
{
    int a[] = { 1, 3, 4, 2, 7, 5, 8, 6 };
    int n = sizeof(a) / sizeof(a[0]);
   
    // Function call
    cout << "Mean = " << findMean(a, n) << endl;
    cout << "Median = " << findMedian(a, n) << endl;
    return 0;
} ''',
  ),
];
final jsProjects = [
  ProjectModel(
    projectname: 'k largest(or smallest) elements in an array',
    description:
        'Given an array with all distinct elements, find the largest three elements. Expected time complexity is O(n) and extra space is O(1)',
    image: AppImages.js,
    sourcecode: '''<script>
  
// JavaScript code for k largest
// elements in an array
  
function kLargest(arr, n, k)
{
    // Sort the given array arr in reverse
    // order.
    arr.sort((a, b) => b - a);
  
    // Print the first kth largest elements
    for (let i = 0; i < k; i++)
        document.write(arr[i] + " ");
}
  
// driver program
    let arr = [ 1, 23, 12, 9, 30, 2, 50 ];
    let n = arr.length;
    let k = 3;
    kLargest(arr, n, k);
  
  
// This code is contributed by Manoj.
  
</script> ''',
  ),
  ProjectModel(
    projectname: 'Tiling Problem',
    description:
        'Given an array with all distinct elements, find the largest three elements. Expected time complexity is O(n) and extra space is O(1).',
    image: AppImages.js,
    sourcecode: '''<script>
  
// JavaScript code for k largest
// elements in an array
  
function kLargest(arr, n, k)
{
    // Sort the given array arr in reverse
    // order.
    arr.sort((a, b) => b - a);
  
    // Print the first kth largest elements
    for (let i = 0; i < k; i++)
        document.write(arr[i] + " ");
}
  
// driver program
    let arr = [ 1, 23, 12, 9, 30, 2, 50 ];
    let n = arr.length;
    let k = 3;
    kLargest(arr, n, k);
  
  
// This code is contributed by Manoj.
  
</script> ''',
  ),
  ProjectModel(
    projectname: 'Permutation Coefficient',
    description:
        'Given an array with all distinct elements, find the largest three elements. Expected time complexity is O(n) and extra space is O(1).',
    image: AppImages.js,
    sourcecode: '''<script>
  
// JavaScript code for k largest
// elements in an array
  
function kLargest(arr, n, k)
{
    // Sort the given array arr in reverse
    // order.
    arr.sort((a, b) => b - a);
  
    // Print the first kth largest elements
    for (let i = 0; i < k; i++)
        document.write(arr[i] + " ");
}
  
// driver program
    let arr = [ 1, 23, 12, 9, 30, 2, 50 ];
    let n = arr.length;
    let k = 3;
    kLargest(arr, n, k);
  
  
// This code is contributed by Manoj.
  
</script> ''',
  ),
  ProjectModel(
    projectname: 'Find minimum number of coins that make a given value',
    description:
        'Given an array with all distinct elements, find the largest three elements. Expected time complexity is O(n) and extra space is O(1).',
    image: AppImages.js,
    sourcecode: '''<script>
  
// JavaScript code for k largest
// elements in an array
  
function kLargest(arr, n, k)
{
    // Sort the given array arr in reverse
    // order.
    arr.sort((a, b) => b - a);
  
    // Print the first kth largest elements
    for (let i = 0; i < k; i++)
        document.write(arr[i] + " ");
}
  
// driver program
    let arr = [ 1, 23, 12, 9, 30, 2, 50 ];
    let n = arr.length;
    let k = 3;
    kLargest(arr, n, k);
  
  
// This code is contributed by Manoj.
  
</script> ''',
  ),
  ProjectModel(
    projectname: 'Reverse an array in groups of given size',
    description:
        'Given an array with all distinct elements, find the largest three elements. Expected time complexity is O(n) and extra space is',
    image: AppImages.js,
    sourcecode: '''<script>
  
// JavaScript code for k largest
// elements in an array
  
function kLargest(arr, n, k)
{
    // Sort the given array arr in reverse
    // order.
    arr.sort((a, b) => b - a);
  
    // Print the first kth largest elements
    for (let i = 0; i < k; i++)
        document.write(arr[i] + " ");
}
  
// driver program
    let arr = [ 1, 23, 12, 9, 30, 2, 50 ];
    let n = arr.length;
    let k = 3;
    kLargest(arr, n, k);
  
  
// This code is contributed by Manoj.
  
</script> ''',
  ),
];
final flutterProjects = [
  ProjectModel(
    projectname: 'Dart Growable List',
    description:
        'Growable list size is not known at declaration and size can be changed at runtime',
    image: AppImages.flutter,
    sourcecode: '''void main() {
  var listvariable = new List<String>.filled(0, "", growable: true);

  listvariable = ["one", "two", "three"];
  print(listvariable);
}
} ''',
  ),
  ProjectModel(
    projectname: 'Calculator',
    description:
        'Create a variable of new types similar to a normal variable declaration',
    image: AppImages.flutter,
    sourcecode: '''typedef Calculator(int first, int second);

sum(int m, int n) {
  print("Result of Sum: ");
}

void main() {
  Calculator add = sum;
  add(10, 20);
} ''',
  ),
  ProjectModel(
    projectname: 'HELLO WORLD',
    description:
        'Hello World Program is a basic Simple First program or application to code and learn any new programming language.',
    image: AppImages.flutter,
    sourcecode: '''//Hello World Sample First Program
void main() {
  print('Hello World First Program');
}
 ''',
  ),
  ProjectModel(
    projectname: 'Arthmatic Operation',
    description:
        'Arithmetic operators in dart provide arithmetic operations such as add, division, subtraction, and division multiplication operators.',
    image: AppImages.flutter,
    sourcecode: '''void main() {
  var m = 25;
  var n = 4;
  
} ''',
  ),
  ProjectModel(
    projectname: 'Sets',
    description:
        'Set is one of the data structures in Dart Collections used to store the collection of values or objects, and does not allow duplicate elements.',
    image: AppImages.flutter,
    sourcecode: '''void main() {
  var listvariable = new List<String>.filled(3, "", growable: false);

  listvariable[0] = "one";
  listvariable[1] = "two";
  listvariable[2] = "three";
  print(listvariable);
} ''',
  ),
];
final kotlinProjects = [
  ProjectModel(
    projectname: 'Declare of variables',
    description: 'Declaration of variables',
    image: AppImages.kotlin,
    sourcecode: '''fun main() {
    val name = "stranger"        // Declare your first variable
       // ...and use it!
    print("Current count:")
    for (i in 0..10) {           // Loop over a range from 0 to 10
       
    }
} ''',
  ),
  ProjectModel(
    projectname: 'Functions',
    description: 'A function that can be suspended and resumed later',
    image: AppImages.kotlin,
    sourcecode: '''import kotlinx.coroutines.*

suspend fun main() {                                // A function that can be suspended and resumed later
    val start = System.currentTimeMillis()
    coroutineScope {                                // Create a scope for starting coroutines
        for (i in 1..10) {
            launch {                                // Start 10 concurrent tasks
                delay(3000L - i * 300)              // Pause their execution
                log(start, "Countdown: ")
            }
        }
    }
    // Execution continues when all coroutines in the scope have finished
    log(start, "Liftoff!")
}

fun log(start: Long, msg: String) {
  
} ''',
  ),
  ProjectModel(
    projectname: 'Object Oriented',
    description: 'Abstract Class',
    image: AppImages.kotlin,
    sourcecode: '''abstract class Person(val name: String) {
    abstract fun greet()
}

interface FoodConsumer {
    fun eat()
    fun pay(amount: Int) = println("Delicious! Here's  bucks!")
}

class RestaurantCustomer(name: String, val dish: String) : Person(name), FoodConsumer {
    fun order() = println("")
}

fun main() {
    val sam = RestaurantCustomer("Sam", "Mixed salad")
    sam.greet() // An implementation of an abstract function
    sam.order() // A member function
    sam.eat() // An implementation of an interface function
    sam.pay(10) // A default implementation in an interface
} ''',
  ),
  ProjectModel(
    projectname: 'Lists',
    description: 'Provide a default value for the argument',
    image: AppImages.kotlin,
    sourcecode: ''' fun main() {
    // Who sent the most messages?
    val frequentSender = messages
        .groupBy(Message::sender)
        .maxByOrNull { (_, messages) -> messages.size }
        ?.key                                                 // Get their names
    println(frequentSender) // [Ma]

    // Who are the senders?
    val senders = messages
        .asSequence()                                         // Make operations lazy (for a long call chain)
        .filter { it.body.isNotBlank() && !it.isRead }        // Use lambdas...
        .map(Message::sender)                                 // ...or member references
        .distinct()
        .sorted()
        .toList()                                             // Convert sequence back to a list to get a result
    println(senders) // [Adam, Ma]
}

data class Message(                                          // Create a data class
    val sender: String,
    val body: String,
    val isRead: Boolean = false,                              // Provide a default value for the argument
)

val messages = listOf(                                       // Create a list
    Message("Ma", "Hey! Where are you?"),
    Message("Adam", "Everything going according to plan today?"),
    Message("Ma", "Please reply. I've lost you!"),
)''',
  ),
  ProjectModel(
    projectname: 'Tests',
    description: 'Ideal for Tests',
    image: AppImages.kotlin,
    sourcecode: '''import org.junit.Test
import kotlin.test.*

class SampleTest {
    @Test
    fun `test sum`() {                  // Write test names with whitespaces in backticks
        val a = 1
        val b = 41
        assertEquals(42, sum(a, b), "Wrong result for sum()")
    }

    @Test
    fun `test computation`() {
        assertTrue("Computation failed") {
            setup()                     // Use lambda returning the test subject
            compute()
        }
    }
}

// Sources
fun sum(a: Int, b: Int) = a + b
fun setup() {}
fun compute() = true ''',
  ),
];
