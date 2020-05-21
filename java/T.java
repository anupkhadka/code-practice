public class T implements Runnable, Tunnable
{
    T()
    {
    }

    public String toString() 
    {
        return "Successfully implemented interface";
    }

    public void run()
    {

    }

    public void tun()
    {

    }


    public static void main(String [] args)
    {
        T t = new T();
        System.out.println(t);
    }
}
