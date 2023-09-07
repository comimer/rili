package z6;

import android.content.Context;
import android.content.res.Resources;
import android.widget.Toast;

public class a
{
  public static void a(Context paramContext, int paramInt)
  {
    b(paramContext, paramInt, 0);
  }
  
  public static void b(Context paramContext, int paramInt1, int paramInt2)
  {
    d(paramContext, paramContext.getApplicationContext().getResources().getString(paramInt1), paramInt2);
  }
  
  public static void c(Context paramContext, String paramString)
  {
    d(paramContext, paramString, 0);
  }
  
  public static void d(Context paramContext, String paramString, int paramInt)
  {
    Toast.makeText(paramContext.getApplicationContext(), paramString, paramInt).show();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z6.a
 * JD-Core Version:    0.7.0.1
 */