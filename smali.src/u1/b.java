package u1;

import com.miui.calendar.util.z;
import okhttp3.b0;
import org.json.JSONObject;
import retrofit2.j;
import tc.a;

public class b
  implements tc.b<b0>
{
  private a a;
  
  public b(a parama)
  {
    this.a = parama;
  }
  
  public void a(a<b0> parama, Throwable paramThrowable)
  {
    parama = this.a;
    if (parama != null)
    {
      parama.b(new Exception(paramThrowable.getClass().getName()));
    }
    else
    {
      parama = new StringBuilder();
      parama.append("onFailure():");
      parama.append(paramThrowable.toString());
      z.c("Cal:D:CallBack", parama.toString());
    }
  }
  
  public void b(a<b0> parama, j<b0> paramj)
  {
    try
    {
      Object localObject;
      if ((paramj.b() == 200) && (paramj.a() != null))
      {
        parama = new org/json/JSONObject;
        localObject = new java/lang/String;
        ((String)localObject).<init>(((b0)paramj.a()).d());
        parama.<init>((String)localObject);
        paramj = this.a;
        if (paramj != null) {
          paramj.a(parama);
        }
      }
      else
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("code = ");
        ((StringBuilder)localObject).append(paramj.b());
        ((StringBuilder)localObject).append(", response.body is Null :");
        if (paramj.a() == null)
        {
          parama = "true";
        }
        else
        {
          parama = new java/lang/StringBuilder;
          parama.<init>();
          parama.append("false : ");
          parama.append(((b0)paramj.a()).E());
          parama = parama.toString();
        }
        ((StringBuilder)localObject).append(parama);
        parama = ((StringBuilder)localObject).toString();
        localObject = this.a;
        if (localObject != null)
        {
          paramj = new java/lang/Exception;
          paramj.<init>(parama);
          ((a)localObject).b(paramj);
        }
        else
        {
          paramj = new java/lang/StringBuilder;
          paramj.<init>();
          paramj.append("onResponse():");
          paramj.append(parama);
          z.c("Cal:D:CallBack", paramj.toString());
        }
      }
    }
    catch (Exception parama)
    {
      paramj = this.a;
      if (paramj != null) {
        paramj.b(parama);
      } else {
        z.d("Cal:D:CallBack", "onResponse()", parama);
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(JSONObject paramJSONObject);
    
    public abstract void b(Exception paramException);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     u1.b
 * JD-Core Version:    0.7.0.1
 */