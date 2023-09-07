package androidx.core.os;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"", "Lkotlin/Pair;", "", "", "pairs", "Landroid/os/Bundle;", "a", "([Lkotlin/Pair;)Landroid/os/Bundle;", "core-ktx_release"}, k=2, mv={1, 6, 0})
public final class d
{
  public static final Bundle a(Pair<String, ? extends Object>... paramVarArgs)
  {
    r.f(paramVarArgs, "pairs");
    Object localObject1 = new Bundle(paramVarArgs.length);
    int i = paramVarArgs.length;
    int j = 0;
    while (j < i)
    {
      Object localObject2 = paramVarArgs[j];
      String str = (String)((Pair)localObject2).component1();
      localObject2 = ((Pair)localObject2).component2();
      if (localObject2 == null)
      {
        ((BaseBundle)localObject1).putString(str, null);
      }
      else if ((localObject2 instanceof Boolean))
      {
        ((BaseBundle)localObject1).putBoolean(str, ((Boolean)localObject2).booleanValue());
      }
      else if ((localObject2 instanceof Byte))
      {
        ((Bundle)localObject1).putByte(str, ((Number)localObject2).byteValue());
      }
      else if ((localObject2 instanceof Character))
      {
        ((Bundle)localObject1).putChar(str, ((Character)localObject2).charValue());
      }
      else if ((localObject2 instanceof Double))
      {
        ((BaseBundle)localObject1).putDouble(str, ((Number)localObject2).doubleValue());
      }
      else if ((localObject2 instanceof Float))
      {
        ((Bundle)localObject1).putFloat(str, ((Number)localObject2).floatValue());
      }
      else if ((localObject2 instanceof Integer))
      {
        ((BaseBundle)localObject1).putInt(str, ((Number)localObject2).intValue());
      }
      else if ((localObject2 instanceof Long))
      {
        ((BaseBundle)localObject1).putLong(str, ((Number)localObject2).longValue());
      }
      else if ((localObject2 instanceof Short))
      {
        ((Bundle)localObject1).putShort(str, ((Number)localObject2).shortValue());
      }
      else if ((localObject2 instanceof Bundle))
      {
        ((Bundle)localObject1).putBundle(str, (Bundle)localObject2);
      }
      else if ((localObject2 instanceof CharSequence))
      {
        ((Bundle)localObject1).putCharSequence(str, (CharSequence)localObject2);
      }
      else if ((localObject2 instanceof Parcelable))
      {
        ((Bundle)localObject1).putParcelable(str, (Parcelable)localObject2);
      }
      else if ((localObject2 instanceof boolean[]))
      {
        ((BaseBundle)localObject1).putBooleanArray(str, (boolean[])localObject2);
      }
      else if ((localObject2 instanceof byte[]))
      {
        ((Bundle)localObject1).putByteArray(str, (byte[])localObject2);
      }
      else if ((localObject2 instanceof char[]))
      {
        ((Bundle)localObject1).putCharArray(str, (char[])localObject2);
      }
      else if ((localObject2 instanceof double[]))
      {
        ((BaseBundle)localObject1).putDoubleArray(str, (double[])localObject2);
      }
      else if ((localObject2 instanceof float[]))
      {
        ((Bundle)localObject1).putFloatArray(str, (float[])localObject2);
      }
      else if ((localObject2 instanceof int[]))
      {
        ((BaseBundle)localObject1).putIntArray(str, (int[])localObject2);
      }
      else if ((localObject2 instanceof long[]))
      {
        ((BaseBundle)localObject1).putLongArray(str, (long[])localObject2);
      }
      else if ((localObject2 instanceof short[]))
      {
        ((Bundle)localObject1).putShortArray(str, (short[])localObject2);
      }
      else if ((localObject2 instanceof Object[]))
      {
        Class localClass = localObject2.getClass().getComponentType();
        r.c(localClass);
        if (Parcelable.class.isAssignableFrom(localClass))
        {
          ((Bundle)localObject1).putParcelableArray(str, (Parcelable[])localObject2);
        }
        else if (String.class.isAssignableFrom(localClass))
        {
          ((BaseBundle)localObject1).putStringArray(str, (String[])localObject2);
        }
        else if (CharSequence.class.isAssignableFrom(localClass))
        {
          ((Bundle)localObject1).putCharSequenceArray(str, (CharSequence[])localObject2);
        }
        else if (Serializable.class.isAssignableFrom(localClass))
        {
          ((Bundle)localObject1).putSerializable(str, (Serializable)localObject2);
        }
        else
        {
          paramVarArgs = localClass.getCanonicalName();
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("Illegal value array type ");
          ((StringBuilder)localObject1).append(paramVarArgs);
          ((StringBuilder)localObject1).append(" for key \"");
          ((StringBuilder)localObject1).append(str);
          ((StringBuilder)localObject1).append('"');
          throw new IllegalArgumentException(((StringBuilder)localObject1).toString());
        }
      }
      else if ((localObject2 instanceof Serializable))
      {
        ((Bundle)localObject1).putSerializable(str, (Serializable)localObject2);
      }
      else if ((localObject2 instanceof IBinder))
      {
        b.a((Bundle)localObject1, str, (IBinder)localObject2);
      }
      else if ((localObject2 instanceof Size))
      {
        c.a((Bundle)localObject1, str, (Size)localObject2);
      }
      else
      {
        if (!(localObject2 instanceof SizeF)) {
          break label776;
        }
        c.b((Bundle)localObject1, str, (SizeF)localObject2);
      }
      j++;
      continue;
      label776:
      paramVarArgs = localObject2.getClass().getCanonicalName();
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Illegal value type ");
      ((StringBuilder)localObject1).append(paramVarArgs);
      ((StringBuilder)localObject1).append(" for key \"");
      ((StringBuilder)localObject1).append(str);
      ((StringBuilder)localObject1).append('"');
      throw new IllegalArgumentException(((StringBuilder)localObject1).toString());
    }
    return localObject1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.os.d
 * JD-Core Version:    0.7.0.1
 */