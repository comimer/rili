package c1;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;
import l1.c;

public class j
  extends g<PointF>
{
  private final PointF i = new PointF();
  private final float[] j = new float[2];
  private final PathMeasure k = new PathMeasure();
  private i l;
  
  public j(List<? extends l1.a<PointF>> paramList)
  {
    super(paramList);
  }
  
  public PointF p(l1.a<PointF> parama, float paramFloat)
  {
    Object localObject = (i)parama;
    Path localPath = ((i)localObject).j();
    if (localPath == null) {
      return (PointF)parama.b;
    }
    parama = this.e;
    if (parama != null)
    {
      parama = (PointF)parama.b(((l1.a)localObject).g, ((l1.a)localObject).h.floatValue(), (PointF)((l1.a)localObject).b, (PointF)((l1.a)localObject).c, e(), paramFloat, f());
      if (parama != null) {
        return parama;
      }
    }
    if (this.l != localObject)
    {
      this.k.setPath(localPath, false);
      this.l = ((i)localObject);
    }
    parama = this.k;
    parama.getPosTan(paramFloat * parama.getLength(), this.j, null);
    localObject = this.i;
    parama = this.j;
    ((PointF)localObject).set(parama[0], parama[1]);
    return this.i;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.j
 * JD-Core Version:    0.7.0.1
 */