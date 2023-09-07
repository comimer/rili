package y2;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.bumptech.glide.load.engine.s;
import java.io.ByteArrayOutputStream;
import n2.d;
import u2.b;

public class a
  implements e<Bitmap, byte[]>
{
  private final Bitmap.CompressFormat a;
  private final int b;
  
  public a()
  {
    this(Bitmap.CompressFormat.JPEG, 100);
  }
  
  public a(Bitmap.CompressFormat paramCompressFormat, int paramInt)
  {
    this.a = paramCompressFormat;
    this.b = paramInt;
  }
  
  public s<byte[]> a(s<Bitmap> params, d paramd)
  {
    paramd = new ByteArrayOutputStream();
    ((Bitmap)params.get()).compress(this.a, this.b, paramd);
    params.a();
    return new b(paramd.toByteArray());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y2.a
 * JD-Core Version:    0.7.0.1
 */