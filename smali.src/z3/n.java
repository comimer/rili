package z3;

import android.content.Context;
import android.os.AsyncTask;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lz3/n;", "Landroid/os/AsyncTask;", "Ljava/lang/Void;", "", "", "", "params", "a", "([Ljava/lang/Void;)Ljava/lang/String;", "Landroid/content/Context;", "context", "data", "<init>", "(Landroid/content/Context;Ljava/lang/String;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
final class n
  extends AsyncTask<Void, Integer, String>
{
  private final String a;
  private final WeakReference<Context> b;
  
  public n(Context paramContext, String paramString)
  {
    this.a = paramString;
    this.b = new WeakReference(paramContext);
  }
  
  protected String a(Void... paramVarArgs)
  {
    r.f(paramVarArgs, "params");
    paramVarArgs = (Context)this.b.get();
    if (paramVarArgs != null) {
      d.h(paramVarArgs).q(paramVarArgs, this.a);
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z3.n
 * JD-Core Version:    0.7.0.1
 */