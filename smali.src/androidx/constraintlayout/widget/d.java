package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class d
{
  private static final int[] f = { 0, 4, 8 };
  private static SparseIntArray g = new SparseIntArray();
  private static SparseIntArray h = new SparseIntArray();
  public String a = "";
  public int b = 0;
  private HashMap<String, ConstraintAttribute> c = new HashMap();
  private boolean d = true;
  private HashMap<Integer, a> e = new HashMap();
  
  static
  {
    g.append(j.A0, 25);
    g.append(j.B0, 26);
    g.append(j.D0, 29);
    g.append(j.E0, 30);
    g.append(j.K0, 36);
    g.append(j.J0, 35);
    g.append(j.h0, 4);
    g.append(j.g0, 3);
    g.append(j.c0, 1);
    g.append(j.e0, 91);
    g.append(j.d0, 92);
    g.append(j.T0, 6);
    g.append(j.U0, 7);
    g.append(j.o0, 17);
    g.append(j.p0, 18);
    g.append(j.q0, 19);
    g.append(j.Y, 99);
    g.append(j.u, 27);
    g.append(j.F0, 32);
    g.append(j.G0, 33);
    g.append(j.n0, 10);
    g.append(j.m0, 9);
    g.append(j.X0, 13);
    g.append(j.a1, 16);
    g.append(j.Y0, 14);
    g.append(j.V0, 11);
    g.append(j.Z0, 15);
    g.append(j.W0, 12);
    g.append(j.N0, 40);
    g.append(j.y0, 39);
    g.append(j.x0, 41);
    g.append(j.M0, 42);
    g.append(j.w0, 20);
    g.append(j.L0, 37);
    g.append(j.l0, 5);
    g.append(j.z0, 87);
    g.append(j.I0, 87);
    g.append(j.C0, 87);
    g.append(j.f0, 87);
    g.append(j.b0, 87);
    g.append(j.z, 24);
    g.append(j.B, 28);
    g.append(j.N, 31);
    g.append(j.O, 8);
    g.append(j.A, 34);
    g.append(j.C, 2);
    g.append(j.x, 23);
    g.append(j.y, 21);
    g.append(j.O0, 95);
    g.append(j.r0, 96);
    g.append(j.w, 22);
    g.append(j.D, 43);
    g.append(j.Q, 44);
    g.append(j.L, 45);
    g.append(j.M, 46);
    g.append(j.K, 60);
    g.append(j.I, 47);
    g.append(j.J, 48);
    g.append(j.E, 49);
    g.append(j.F, 50);
    g.append(j.G, 51);
    g.append(j.H, 52);
    g.append(j.P, 53);
    g.append(j.P0, 54);
    g.append(j.s0, 55);
    g.append(j.Q0, 56);
    g.append(j.t0, 57);
    g.append(j.R0, 58);
    g.append(j.u0, 59);
    g.append(j.i0, 61);
    g.append(j.k0, 62);
    g.append(j.j0, 63);
    g.append(j.R, 64);
    g.append(j.k1, 65);
    g.append(j.X, 66);
    g.append(j.l1, 67);
    g.append(j.d1, 79);
    g.append(j.v, 38);
    g.append(j.c1, 68);
    g.append(j.S0, 69);
    g.append(j.v0, 70);
    g.append(j.b1, 97);
    g.append(j.V, 71);
    g.append(j.T, 72);
    g.append(j.U, 73);
    g.append(j.W, 74);
    g.append(j.S, 75);
    g.append(j.e1, 76);
    g.append(j.H0, 77);
    g.append(j.m1, 78);
    g.append(j.a0, 80);
    g.append(j.Z, 81);
    g.append(j.f1, 82);
    g.append(j.j1, 83);
    g.append(j.i1, 84);
    g.append(j.h1, 85);
    g.append(j.g1, 86);
    SparseIntArray localSparseIntArray = h;
    int i = j.q4;
    localSparseIntArray.append(i, 6);
    h.append(i, 7);
    h.append(j.l3, 27);
    h.append(j.t4, 13);
    h.append(j.w4, 16);
    h.append(j.u4, 14);
    h.append(j.r4, 11);
    h.append(j.v4, 15);
    h.append(j.s4, 12);
    h.append(j.k4, 40);
    h.append(j.d4, 39);
    h.append(j.c4, 41);
    h.append(j.j4, 42);
    h.append(j.b4, 20);
    h.append(j.i4, 37);
    h.append(j.V3, 5);
    h.append(j.e4, 87);
    h.append(j.h4, 87);
    h.append(j.f4, 87);
    h.append(j.S3, 87);
    h.append(j.R3, 87);
    h.append(j.q3, 24);
    h.append(j.s3, 28);
    h.append(j.E3, 31);
    h.append(j.F3, 8);
    h.append(j.r3, 34);
    h.append(j.t3, 2);
    h.append(j.o3, 23);
    h.append(j.p3, 21);
    h.append(j.l4, 95);
    h.append(j.W3, 96);
    h.append(j.n3, 22);
    h.append(j.u3, 43);
    h.append(j.H3, 44);
    h.append(j.C3, 45);
    h.append(j.D3, 46);
    h.append(j.B3, 60);
    h.append(j.z3, 47);
    h.append(j.A3, 48);
    h.append(j.v3, 49);
    h.append(j.w3, 50);
    h.append(j.x3, 51);
    h.append(j.y3, 52);
    h.append(j.G3, 53);
    h.append(j.m4, 54);
    h.append(j.X3, 55);
    h.append(j.n4, 56);
    h.append(j.Y3, 57);
    h.append(j.o4, 58);
    h.append(j.Z3, 59);
    h.append(j.U3, 62);
    h.append(j.T3, 63);
    h.append(j.I3, 64);
    h.append(j.H4, 65);
    h.append(j.O3, 66);
    h.append(j.I4, 67);
    h.append(j.z4, 79);
    h.append(j.m3, 38);
    h.append(j.A4, 98);
    h.append(j.y4, 68);
    h.append(j.p4, 69);
    h.append(j.a4, 70);
    h.append(j.M3, 71);
    h.append(j.K3, 72);
    h.append(j.L3, 73);
    h.append(j.N3, 74);
    h.append(j.J3, 75);
    h.append(j.B4, 76);
    h.append(j.g4, 77);
    h.append(j.J4, 78);
    h.append(j.Q3, 80);
    h.append(j.P3, 81);
    h.append(j.C4, 82);
    h.append(j.G4, 83);
    h.append(j.F4, 84);
    h.append(j.E4, 85);
    h.append(j.D4, 86);
    h.append(j.x4, 97);
  }
  
  private int[] n(View paramView, String paramString)
  {
    String[] arrayOfString = paramString.split(",");
    Context localContext = paramView.getContext();
    paramString = new int[arrayOfString.length];
    int i = 0;
    for (int j = i; i < arrayOfString.length; j++)
    {
      Object localObject = arrayOfString[i].trim();
      try
      {
        k = i.class.getField((String)localObject).getInt(null);
      }
      catch (Exception localException)
      {
        k = 0;
      }
      int m = k;
      if (k == 0) {
        m = localContext.getResources().getIdentifier((String)localObject, "id", localContext.getPackageName());
      }
      int k = m;
      if (m == 0)
      {
        k = m;
        if (paramView.isInEditMode())
        {
          k = m;
          if ((paramView.getParent() instanceof ConstraintLayout))
          {
            localObject = ((ConstraintLayout)paramView.getParent()).f(0, localObject);
            k = m;
            if (localObject != null)
            {
              k = m;
              if ((localObject instanceof Integer)) {
                k = ((Integer)localObject).intValue();
              }
            }
          }
        }
      }
      paramString[j] = k;
      i++;
    }
    paramView = paramString;
    if (j != arrayOfString.length) {
      paramView = Arrays.copyOf(paramString, j);
    }
    return paramView;
  }
  
  private a o(Context paramContext, AttributeSet paramAttributeSet, boolean paramBoolean)
  {
    a locala = new a();
    int[] arrayOfInt;
    if (paramBoolean) {
      arrayOfInt = j.k3;
    } else {
      arrayOfInt = j.t;
    }
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, arrayOfInt);
    w(paramContext, locala, paramAttributeSet, paramBoolean);
    paramAttributeSet.recycle();
    return locala;
  }
  
  private a p(int paramInt)
  {
    if (!this.e.containsKey(Integer.valueOf(paramInt))) {
      this.e.put(Integer.valueOf(paramInt), new a());
    }
    return (a)this.e.get(Integer.valueOf(paramInt));
  }
  
  private static int s(TypedArray paramTypedArray, int paramInt1, int paramInt2)
  {
    int i = paramTypedArray.getResourceId(paramInt1, paramInt2);
    paramInt2 = i;
    if (i == -1) {
      paramInt2 = paramTypedArray.getInt(paramInt1, -1);
    }
    return paramInt2;
  }
  
  static void t(Object paramObject, TypedArray paramTypedArray, int paramInt1, int paramInt2)
  {
    if (paramObject == null) {
      return;
    }
    int i = paramTypedArray.peekValue(paramInt1).type;
    if (i != 3)
    {
      int j = -2;
      boolean bool = false;
      if (i != 5)
      {
        paramInt1 = paramTypedArray.getInt(paramInt1, 0);
        if (paramInt1 != -4)
        {
          if ((paramInt1 == -3) || ((paramInt1 != -2) && (paramInt1 != -1))) {
            paramInt1 = 0;
          }
        }
        else
        {
          bool = true;
          paramInt1 = j;
        }
      }
      else
      {
        paramInt1 = paramTypedArray.getDimensionPixelSize(paramInt1, 0);
      }
      if ((paramObject instanceof ConstraintLayout.b))
      {
        paramObject = (ConstraintLayout.b)paramObject;
        if (paramInt2 == 0)
        {
          paramObject.width = paramInt1;
          paramObject.a0 = bool;
        }
        else
        {
          paramObject.height = paramInt1;
          paramObject.b0 = bool;
        }
      }
      else if ((paramObject instanceof b))
      {
        paramObject = (b)paramObject;
        if (paramInt2 == 0)
        {
          paramObject.d = paramInt1;
          paramObject.n0 = bool;
        }
        else
        {
          paramObject.e = paramInt1;
          paramObject.o0 = bool;
        }
      }
      else if ((paramObject instanceof d.a.a))
      {
        paramObject = (d.a.a)paramObject;
        if (paramInt2 == 0)
        {
          paramObject.b(23, paramInt1);
          paramObject.d(80, bool);
        }
        else
        {
          paramObject.b(21, paramInt1);
          paramObject.d(81, bool);
        }
      }
      return;
    }
    u(paramObject, paramTypedArray.getString(paramInt1), paramInt2);
  }
  
  static void u(Object paramObject, String paramString, int paramInt)
  {
    if (paramString == null) {
      return;
    }
    int i = paramString.indexOf('=');
    int j = paramString.length();
    String str2;
    if ((i > 0) && (i < j - 1))
    {
      String str1 = paramString.substring(0, i);
      str2 = paramString.substring(i + 1);
      if (str2.length() > 0)
      {
        paramString = str1.trim();
        str2 = str2.trim();
        if ("ratio".equalsIgnoreCase(paramString))
        {
          if ((paramObject instanceof ConstraintLayout.b))
          {
            paramObject = (ConstraintLayout.b)paramObject;
            if (paramInt == 0) {
              paramObject.width = 0;
            } else {
              paramObject.height = 0;
            }
            v(paramObject, str2);
          }
          else if ((paramObject instanceof b))
          {
            ((b)paramObject).A = str2;
          }
          else if ((paramObject instanceof d.a.a))
          {
            ((d.a.a)paramObject).c(5, str2);
          }
        }
        else if (!"weight".equalsIgnoreCase(paramString)) {}
      }
    }
    try
    {
      f1 = Float.parseFloat(str2);
      if ((paramObject instanceof ConstraintLayout.b))
      {
        paramObject = (ConstraintLayout.b)paramObject;
        if (paramInt == 0)
        {
          paramObject.width = 0;
          paramObject.L = f1;
        }
        else
        {
          paramObject.height = 0;
          paramObject.M = f1;
        }
      }
      else if ((paramObject instanceof b))
      {
        paramObject = (b)paramObject;
        if (paramInt == 0)
        {
          paramObject.d = 0;
          paramObject.W = f1;
        }
        else
        {
          paramObject.e = 0;
          paramObject.V = f1;
        }
      }
      else if ((paramObject instanceof d.a.a))
      {
        paramObject = (d.a.a)paramObject;
        if (paramInt == 0)
        {
          paramObject.b(23, 0);
          paramObject.a(39, f1);
        }
        else
        {
          paramObject.b(21, 0);
          paramObject.a(40, f1);
        }
      }
    }
    catch (NumberFormatException paramObject)
    {
      float f1;
      label492:
      break label492;
    }
    if ("parent".equalsIgnoreCase(paramString))
    {
      f1 = Math.max(0.0F, Math.min(1.0F, Float.parseFloat(str2)));
      if ((paramObject instanceof ConstraintLayout.b))
      {
        paramObject = (ConstraintLayout.b)paramObject;
        if (paramInt == 0)
        {
          paramObject.width = 0;
          paramObject.V = f1;
          paramObject.P = 2;
        }
        else
        {
          paramObject.height = 0;
          paramObject.W = f1;
          paramObject.Q = 2;
        }
      }
      else if ((paramObject instanceof b))
      {
        paramObject = (b)paramObject;
        if (paramInt == 0)
        {
          paramObject.d = 0;
          paramObject.f0 = f1;
          paramObject.Z = 2;
        }
        else
        {
          paramObject.e = 0;
          paramObject.g0 = f1;
          paramObject.a0 = 2;
        }
      }
      else if ((paramObject instanceof d.a.a))
      {
        paramObject = (d.a.a)paramObject;
        if (paramInt == 0)
        {
          paramObject.b(23, 0);
          paramObject.b(54, 2);
        }
        else
        {
          paramObject.b(21, 0);
          paramObject.b(55, 2);
        }
      }
    }
  }
  
  static void v(ConstraintLayout.b paramb, String paramString)
  {
    f1 = (0.0F / 0.0F);
    int i = -1;
    f2 = f1;
    j = i;
    String str2;
    if (paramString != null)
    {
      int k = paramString.length();
      int m = paramString.indexOf(',');
      int n = 0;
      i1 = i;
      j = n;
      if (m > 0)
      {
        i1 = i;
        j = n;
        if (m < k - 1)
        {
          str1 = paramString.substring(0, m);
          if (str1.equalsIgnoreCase("W"))
          {
            i1 = 0;
          }
          else
          {
            i1 = i;
            if (str1.equalsIgnoreCase("H")) {
              i1 = 1;
            }
          }
          j = m + 1;
        }
      }
      i = paramString.indexOf(':');
      if ((i >= 0) && (i < k - 1))
      {
        str1 = paramString.substring(j, i);
        str2 = paramString.substring(i + 1);
        f2 = f1;
        j = i1;
        if (str1.length() <= 0) {
          break label293;
        }
        f2 = f1;
        j = i1;
        if (str2.length() <= 0) {
          break label293;
        }
      }
    }
    try
    {
      float f3 = Float.parseFloat(str1);
      float f4 = Float.parseFloat(str2);
      f2 = f1;
      j = i1;
      if (f3 <= 0.0F) {
        break label293;
      }
      f2 = f1;
      j = i1;
      if (f4 <= 0.0F) {
        break label293;
      }
      if (i1 == 1)
      {
        f2 = Math.abs(f4 / f3);
        j = i1;
      }
      else
      {
        f2 = Math.abs(f3 / f4);
        j = i1;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        f2 = f1;
        j = i1;
      }
    }
    String str1 = paramString.substring(j);
    f2 = f1;
    j = i1;
    if (str1.length() > 0)
    {
      f2 = Float.parseFloat(str1);
      j = i1;
    }
    label293:
    paramb.I = paramString;
    paramb.J = f2;
    paramb.K = j;
  }
  
  private void w(Context paramContext, a parama, TypedArray paramTypedArray, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      x(paramContext, parama, paramTypedArray);
      return;
    }
    int i = paramTypedArray.getIndexCount();
    for (int j = 0; j < i; j++)
    {
      int k = paramTypedArray.getIndex(j);
      if ((k != j.v) && (j.N != k) && (j.O != k))
      {
        parama.d.a = true;
        parama.e.b = true;
        parama.c.a = true;
        parama.f.a = true;
      }
      switch (g.get(k))
      {
      case 88: 
      case 89: 
      case 90: 
      default: 
        paramContext = new StringBuilder();
        paramContext.append("Unknown attribute 0x");
        paramContext.append(Integer.toHexString(k));
        paramContext.append("   ");
        paramContext.append(g.get(k));
        Log.w("ConstraintSet", paramContext.toString());
        break;
      case 97: 
        paramContext = parama.e;
        paramContext.q0 = paramTypedArray.getInt(k, paramContext.q0);
        break;
      case 96: 
        t(parama.e, paramTypedArray, k, 1);
        break;
      case 95: 
        t(parama.e, paramTypedArray, k, 0);
        break;
      case 94: 
        paramContext = parama.e;
        paramContext.U = paramTypedArray.getDimensionPixelSize(k, paramContext.U);
        break;
      case 93: 
        paramContext = parama.e;
        paramContext.N = paramTypedArray.getDimensionPixelSize(k, paramContext.N);
        break;
      case 92: 
        paramContext = parama.e;
        paramContext.t = s(paramTypedArray, k, paramContext.t);
        break;
      case 91: 
        paramContext = parama.e;
        paramContext.s = s(paramTypedArray, k, paramContext.s);
        break;
      case 87: 
        paramContext = new StringBuilder();
        paramContext.append("unused attribute 0x");
        paramContext.append(Integer.toHexString(k));
        paramContext.append("   ");
        paramContext.append(g.get(k));
        Log.w("ConstraintSet", paramContext.toString());
        break;
      case 86: 
        int m = paramTypedArray.peekValue(k).type;
        if (m == 1)
        {
          parama.d.n = paramTypedArray.getResourceId(k, -1);
          paramContext = parama.d;
          if (paramContext.n != -1) {
            paramContext.m = -2;
          }
        }
        else if (m == 3)
        {
          parama.d.l = paramTypedArray.getString(k);
          if (parama.d.l.indexOf("/") > 0)
          {
            parama.d.n = paramTypedArray.getResourceId(k, -1);
            parama.d.m = -2;
          }
          else
          {
            parama.d.m = -1;
          }
        }
        else
        {
          paramContext = parama.d;
          paramContext.m = paramTypedArray.getInteger(k, paramContext.n);
        }
        break;
      case 85: 
        paramContext = parama.d;
        paramContext.j = paramTypedArray.getFloat(k, paramContext.j);
        break;
      case 84: 
        paramContext = parama.d;
        paramContext.k = paramTypedArray.getInteger(k, paramContext.k);
        break;
      case 83: 
        paramContext = parama.f;
        paramContext.i = s(paramTypedArray, k, paramContext.i);
        break;
      case 82: 
        paramContext = parama.d;
        paramContext.c = paramTypedArray.getInteger(k, paramContext.c);
        break;
      case 81: 
        paramContext = parama.e;
        paramContext.o0 = paramTypedArray.getBoolean(k, paramContext.o0);
        break;
      case 80: 
        paramContext = parama.e;
        paramContext.n0 = paramTypedArray.getBoolean(k, paramContext.n0);
        break;
      case 79: 
        paramContext = parama.d;
        paramContext.g = paramTypedArray.getFloat(k, paramContext.g);
        break;
      case 78: 
        paramContext = parama.c;
        paramContext.c = paramTypedArray.getInt(k, paramContext.c);
        break;
      case 77: 
        parama.e.m0 = paramTypedArray.getString(k);
        break;
      case 76: 
        paramContext = parama.d;
        paramContext.e = paramTypedArray.getInt(k, paramContext.e);
        break;
      case 75: 
        paramContext = parama.e;
        paramContext.p0 = paramTypedArray.getBoolean(k, paramContext.p0);
        break;
      case 74: 
        parama.e.l0 = paramTypedArray.getString(k);
        break;
      case 73: 
        paramContext = parama.e;
        paramContext.i0 = paramTypedArray.getDimensionPixelSize(k, paramContext.i0);
        break;
      case 72: 
        paramContext = parama.e;
        paramContext.h0 = paramTypedArray.getInt(k, paramContext.h0);
        break;
      case 71: 
        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
        break;
      case 70: 
        parama.e.g0 = paramTypedArray.getFloat(k, 1.0F);
        break;
      case 69: 
        parama.e.f0 = paramTypedArray.getFloat(k, 1.0F);
        break;
      case 68: 
        paramContext = parama.c;
        paramContext.e = paramTypedArray.getFloat(k, paramContext.e);
        break;
      case 67: 
        paramContext = parama.d;
        paramContext.i = paramTypedArray.getFloat(k, paramContext.i);
        break;
      case 66: 
        parama.d.f = paramTypedArray.getInt(k, 0);
        break;
      case 65: 
        if (paramTypedArray.peekValue(k).type == 3) {
          parama.d.d = paramTypedArray.getString(k);
        } else {
          parama.d.d = p.b.c[paramTypedArray.getInteger(k, 0)];
        }
        break;
      case 64: 
        paramContext = parama.d;
        paramContext.b = s(paramTypedArray, k, paramContext.b);
        break;
      case 63: 
        paramContext = parama.e;
        paramContext.D = paramTypedArray.getFloat(k, paramContext.D);
        break;
      case 62: 
        paramContext = parama.e;
        paramContext.C = paramTypedArray.getDimensionPixelSize(k, paramContext.C);
        break;
      case 61: 
        paramContext = parama.e;
        paramContext.B = s(paramTypedArray, k, paramContext.B);
        break;
      case 60: 
        paramContext = parama.f;
        paramContext.b = paramTypedArray.getFloat(k, paramContext.b);
        break;
      case 59: 
        paramContext = parama.e;
        paramContext.e0 = paramTypedArray.getDimensionPixelSize(k, paramContext.e0);
        break;
      case 58: 
        paramContext = parama.e;
        paramContext.d0 = paramTypedArray.getDimensionPixelSize(k, paramContext.d0);
        break;
      case 57: 
        paramContext = parama.e;
        paramContext.c0 = paramTypedArray.getDimensionPixelSize(k, paramContext.c0);
        break;
      case 56: 
        paramContext = parama.e;
        paramContext.b0 = paramTypedArray.getDimensionPixelSize(k, paramContext.b0);
        break;
      case 55: 
        paramContext = parama.e;
        paramContext.a0 = paramTypedArray.getInt(k, paramContext.a0);
        break;
      case 54: 
        paramContext = parama.e;
        paramContext.Z = paramTypedArray.getInt(k, paramContext.Z);
        break;
      case 53: 
        paramContext = parama.f;
        paramContext.l = paramTypedArray.getDimension(k, paramContext.l);
        break;
      case 52: 
        paramContext = parama.f;
        paramContext.k = paramTypedArray.getDimension(k, paramContext.k);
        break;
      case 51: 
        paramContext = parama.f;
        paramContext.j = paramTypedArray.getDimension(k, paramContext.j);
        break;
      case 50: 
        paramContext = parama.f;
        paramContext.h = paramTypedArray.getDimension(k, paramContext.h);
        break;
      case 49: 
        paramContext = parama.f;
        paramContext.g = paramTypedArray.getDimension(k, paramContext.g);
        break;
      case 48: 
        paramContext = parama.f;
        paramContext.f = paramTypedArray.getFloat(k, paramContext.f);
        break;
      case 47: 
        paramContext = parama.f;
        paramContext.e = paramTypedArray.getFloat(k, paramContext.e);
        break;
      case 46: 
        paramContext = parama.f;
        paramContext.d = paramTypedArray.getFloat(k, paramContext.d);
        break;
      case 45: 
        paramContext = parama.f;
        paramContext.c = paramTypedArray.getFloat(k, paramContext.c);
        break;
      case 44: 
        paramContext = parama.f;
        paramContext.m = true;
        paramContext.n = paramTypedArray.getDimension(k, paramContext.n);
        break;
      case 43: 
        paramContext = parama.c;
        paramContext.d = paramTypedArray.getFloat(k, paramContext.d);
        break;
      case 42: 
        paramContext = parama.e;
        paramContext.Y = paramTypedArray.getInt(k, paramContext.Y);
        break;
      case 41: 
        paramContext = parama.e;
        paramContext.X = paramTypedArray.getInt(k, paramContext.X);
        break;
      case 40: 
        paramContext = parama.e;
        paramContext.V = paramTypedArray.getFloat(k, paramContext.V);
        break;
      case 39: 
        paramContext = parama.e;
        paramContext.W = paramTypedArray.getFloat(k, paramContext.W);
        break;
      case 38: 
        parama.a = paramTypedArray.getResourceId(k, parama.a);
        break;
      case 37: 
        paramContext = parama.e;
        paramContext.z = paramTypedArray.getFloat(k, paramContext.z);
        break;
      case 36: 
        paramContext = parama.e;
        paramContext.n = s(paramTypedArray, k, paramContext.n);
        break;
      case 35: 
        paramContext = parama.e;
        paramContext.o = s(paramTypedArray, k, paramContext.o);
        break;
      case 34: 
        paramContext = parama.e;
        paramContext.J = paramTypedArray.getDimensionPixelSize(k, paramContext.J);
        break;
      case 33: 
        paramContext = parama.e;
        paramContext.v = s(paramTypedArray, k, paramContext.v);
        break;
      case 32: 
        paramContext = parama.e;
        paramContext.u = s(paramTypedArray, k, paramContext.u);
        break;
      case 31: 
        paramContext = parama.e;
        paramContext.M = paramTypedArray.getDimensionPixelSize(k, paramContext.M);
        break;
      case 30: 
        paramContext = parama.e;
        paramContext.m = s(paramTypedArray, k, paramContext.m);
        break;
      case 29: 
        paramContext = parama.e;
        paramContext.l = s(paramTypedArray, k, paramContext.l);
        break;
      case 28: 
        paramContext = parama.e;
        paramContext.I = paramTypedArray.getDimensionPixelSize(k, paramContext.I);
        break;
      case 27: 
        paramContext = parama.e;
        paramContext.G = paramTypedArray.getInt(k, paramContext.G);
        break;
      case 26: 
        paramContext = parama.e;
        paramContext.k = s(paramTypedArray, k, paramContext.k);
        break;
      case 25: 
        paramContext = parama.e;
        paramContext.j = s(paramTypedArray, k, paramContext.j);
        break;
      case 24: 
        paramContext = parama.e;
        paramContext.H = paramTypedArray.getDimensionPixelSize(k, paramContext.H);
        break;
      case 23: 
        paramContext = parama.e;
        paramContext.d = paramTypedArray.getLayoutDimension(k, paramContext.d);
        break;
      case 22: 
        paramContext = parama.c;
        paramContext.b = paramTypedArray.getInt(k, paramContext.b);
        paramContext = parama.c;
        paramContext.b = f[paramContext.b];
        break;
      case 21: 
        paramContext = parama.e;
        paramContext.e = paramTypedArray.getLayoutDimension(k, paramContext.e);
        break;
      case 20: 
        paramContext = parama.e;
        paramContext.y = paramTypedArray.getFloat(k, paramContext.y);
        break;
      case 19: 
        paramContext = parama.e;
        paramContext.h = paramTypedArray.getFloat(k, paramContext.h);
        break;
      case 18: 
        paramContext = parama.e;
        paramContext.g = paramTypedArray.getDimensionPixelOffset(k, paramContext.g);
        break;
      case 17: 
        paramContext = parama.e;
        paramContext.f = paramTypedArray.getDimensionPixelOffset(k, paramContext.f);
        break;
      case 16: 
        paramContext = parama.e;
        paramContext.P = paramTypedArray.getDimensionPixelSize(k, paramContext.P);
        break;
      case 15: 
        paramContext = parama.e;
        paramContext.T = paramTypedArray.getDimensionPixelSize(k, paramContext.T);
        break;
      case 14: 
        paramContext = parama.e;
        paramContext.Q = paramTypedArray.getDimensionPixelSize(k, paramContext.Q);
        break;
      case 13: 
        paramContext = parama.e;
        paramContext.O = paramTypedArray.getDimensionPixelSize(k, paramContext.O);
        break;
      case 12: 
        paramContext = parama.e;
        paramContext.S = paramTypedArray.getDimensionPixelSize(k, paramContext.S);
        break;
      case 11: 
        paramContext = parama.e;
        paramContext.R = paramTypedArray.getDimensionPixelSize(k, paramContext.R);
        break;
      case 10: 
        paramContext = parama.e;
        paramContext.w = s(paramTypedArray, k, paramContext.w);
        break;
      case 9: 
        paramContext = parama.e;
        paramContext.x = s(paramTypedArray, k, paramContext.x);
        break;
      case 8: 
        paramContext = parama.e;
        paramContext.L = paramTypedArray.getDimensionPixelSize(k, paramContext.L);
        break;
      case 7: 
        paramContext = parama.e;
        paramContext.F = paramTypedArray.getDimensionPixelOffset(k, paramContext.F);
        break;
      case 6: 
        paramContext = parama.e;
        paramContext.E = paramTypedArray.getDimensionPixelOffset(k, paramContext.E);
        break;
      case 5: 
        parama.e.A = paramTypedArray.getString(k);
        break;
      case 4: 
        paramContext = parama.e;
        paramContext.p = s(paramTypedArray, k, paramContext.p);
        break;
      case 3: 
        paramContext = parama.e;
        paramContext.q = s(paramTypedArray, k, paramContext.q);
        break;
      case 2: 
        paramContext = parama.e;
        paramContext.K = paramTypedArray.getDimensionPixelSize(k, paramContext.K);
        break;
      case 1: 
        paramContext = parama.e;
        paramContext.r = s(paramTypedArray, k, paramContext.r);
      }
    }
    paramContext = parama.e;
    if (paramContext.l0 != null) {
      paramContext.k0 = null;
    }
  }
  
  private static void x(Context paramContext, a parama, TypedArray paramTypedArray)
  {
    int i = paramTypedArray.getIndexCount();
    paramContext = new d.a.a();
    parama.h = paramContext;
    parama.d.a = false;
    parama.e.b = false;
    parama.c.a = false;
    parama.f.a = false;
    for (int j = 0; j < i; j++)
    {
      int k = paramTypedArray.getIndex(j);
      Object localObject;
      int m;
      switch (h.get(k))
      {
      case 3: 
      case 4: 
      case 9: 
      case 10: 
      case 25: 
      case 26: 
      case 29: 
      case 30: 
      case 32: 
      case 33: 
      case 35: 
      case 36: 
      case 61: 
      case 88: 
      case 89: 
      case 90: 
      case 91: 
      case 92: 
      default: 
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Unknown attribute 0x");
        ((StringBuilder)localObject).append(Integer.toHexString(k));
        ((StringBuilder)localObject).append("   ");
        ((StringBuilder)localObject).append(g.get(k));
        Log.w("ConstraintSet", ((StringBuilder)localObject).toString());
        break;
      case 99: 
        paramContext.d(99, paramTypedArray.getBoolean(k, parama.e.i));
        break;
      case 98: 
        if (MotionLayout.A0)
        {
          m = paramTypedArray.getResourceId(k, parama.a);
          parama.a = m;
          if (m == -1) {
            parama.b = paramTypedArray.getString(k);
          }
        }
        else if (paramTypedArray.peekValue(k).type == 3)
        {
          parama.b = paramTypedArray.getString(k);
        }
        else
        {
          parama.a = paramTypedArray.getResourceId(k, parama.a);
        }
        break;
      case 97: 
        paramContext.b(97, paramTypedArray.getInt(k, parama.e.q0));
        break;
      case 96: 
        t(paramContext, paramTypedArray, k, 1);
        break;
      case 95: 
        t(paramContext, paramTypedArray, k, 0);
        break;
      case 94: 
        paramContext.b(94, paramTypedArray.getDimensionPixelSize(k, parama.e.U));
        break;
      case 93: 
        paramContext.b(93, paramTypedArray.getDimensionPixelSize(k, parama.e.N));
        break;
      case 87: 
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("unused attribute 0x");
        ((StringBuilder)localObject).append(Integer.toHexString(k));
        ((StringBuilder)localObject).append("   ");
        ((StringBuilder)localObject).append(g.get(k));
        Log.w("ConstraintSet", ((StringBuilder)localObject).toString());
        break;
      case 86: 
        m = paramTypedArray.peekValue(k).type;
        if (m == 1)
        {
          parama.d.n = paramTypedArray.getResourceId(k, -1);
          paramContext.b(89, parama.d.n);
          localObject = parama.d;
          if (((c)localObject).n != -1)
          {
            ((c)localObject).m = -2;
            paramContext.b(88, -2);
          }
        }
        else if (m == 3)
        {
          parama.d.l = paramTypedArray.getString(k);
          paramContext.c(90, parama.d.l);
          if (parama.d.l.indexOf("/") > 0)
          {
            parama.d.n = paramTypedArray.getResourceId(k, -1);
            paramContext.b(89, parama.d.n);
            parama.d.m = -2;
            paramContext.b(88, -2);
          }
          else
          {
            parama.d.m = -1;
            paramContext.b(88, -1);
          }
        }
        else
        {
          localObject = parama.d;
          ((c)localObject).m = paramTypedArray.getInteger(k, ((c)localObject).n);
          paramContext.b(88, parama.d.m);
        }
        break;
      case 85: 
        paramContext.a(85, paramTypedArray.getFloat(k, parama.d.j));
        break;
      case 84: 
        paramContext.b(84, paramTypedArray.getInteger(k, parama.d.k));
        break;
      case 83: 
        paramContext.b(83, s(paramTypedArray, k, parama.f.i));
        break;
      case 82: 
        paramContext.b(82, paramTypedArray.getInteger(k, parama.d.c));
        break;
      case 81: 
        paramContext.d(81, paramTypedArray.getBoolean(k, parama.e.o0));
        break;
      case 80: 
        paramContext.d(80, paramTypedArray.getBoolean(k, parama.e.n0));
        break;
      case 79: 
        paramContext.a(79, paramTypedArray.getFloat(k, parama.d.g));
        break;
      case 78: 
        paramContext.b(78, paramTypedArray.getInt(k, parama.c.c));
        break;
      case 77: 
        paramContext.c(77, paramTypedArray.getString(k));
        break;
      case 76: 
        paramContext.b(76, paramTypedArray.getInt(k, parama.d.e));
        break;
      case 75: 
        paramContext.d(75, paramTypedArray.getBoolean(k, parama.e.p0));
        break;
      case 74: 
        paramContext.c(74, paramTypedArray.getString(k));
        break;
      case 73: 
        paramContext.b(73, paramTypedArray.getDimensionPixelSize(k, parama.e.i0));
        break;
      case 72: 
        paramContext.b(72, paramTypedArray.getInt(k, parama.e.h0));
        break;
      case 71: 
        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
        break;
      case 70: 
        paramContext.a(70, paramTypedArray.getFloat(k, 1.0F));
        break;
      case 69: 
        paramContext.a(69, paramTypedArray.getFloat(k, 1.0F));
        break;
      case 68: 
        paramContext.a(68, paramTypedArray.getFloat(k, parama.c.e));
        break;
      case 67: 
        paramContext.a(67, paramTypedArray.getFloat(k, parama.d.i));
        break;
      case 66: 
        paramContext.b(66, paramTypedArray.getInt(k, 0));
        break;
      case 65: 
        if (paramTypedArray.peekValue(k).type == 3) {
          paramContext.c(65, paramTypedArray.getString(k));
        } else {
          paramContext.c(65, p.b.c[paramTypedArray.getInteger(k, 0)]);
        }
        break;
      case 64: 
        paramContext.b(64, s(paramTypedArray, k, parama.d.b));
        break;
      case 63: 
        paramContext.a(63, paramTypedArray.getFloat(k, parama.e.D));
        break;
      case 62: 
        paramContext.b(62, paramTypedArray.getDimensionPixelSize(k, parama.e.C));
        break;
      case 60: 
        paramContext.a(60, paramTypedArray.getFloat(k, parama.f.b));
        break;
      case 59: 
        paramContext.b(59, paramTypedArray.getDimensionPixelSize(k, parama.e.e0));
        break;
      case 58: 
        paramContext.b(58, paramTypedArray.getDimensionPixelSize(k, parama.e.d0));
        break;
      case 57: 
        paramContext.b(57, paramTypedArray.getDimensionPixelSize(k, parama.e.c0));
        break;
      case 56: 
        paramContext.b(56, paramTypedArray.getDimensionPixelSize(k, parama.e.b0));
        break;
      case 55: 
        paramContext.b(55, paramTypedArray.getInt(k, parama.e.a0));
        break;
      case 54: 
        paramContext.b(54, paramTypedArray.getInt(k, parama.e.Z));
        break;
      case 53: 
        paramContext.a(53, paramTypedArray.getDimension(k, parama.f.l));
        break;
      case 52: 
        paramContext.a(52, paramTypedArray.getDimension(k, parama.f.k));
        break;
      case 51: 
        paramContext.a(51, paramTypedArray.getDimension(k, parama.f.j));
        break;
      case 50: 
        paramContext.a(50, paramTypedArray.getDimension(k, parama.f.h));
        break;
      case 49: 
        paramContext.a(49, paramTypedArray.getDimension(k, parama.f.g));
        break;
      case 48: 
        paramContext.a(48, paramTypedArray.getFloat(k, parama.f.f));
        break;
      case 47: 
        paramContext.a(47, paramTypedArray.getFloat(k, parama.f.e));
        break;
      case 46: 
        paramContext.a(46, paramTypedArray.getFloat(k, parama.f.d));
        break;
      case 45: 
        paramContext.a(45, paramTypedArray.getFloat(k, parama.f.c));
        break;
      case 44: 
        paramContext.d(44, true);
        paramContext.a(44, paramTypedArray.getDimension(k, parama.f.n));
        break;
      case 43: 
        paramContext.a(43, paramTypedArray.getFloat(k, parama.c.d));
        break;
      case 42: 
        paramContext.b(42, paramTypedArray.getInt(k, parama.e.Y));
        break;
      case 41: 
        paramContext.b(41, paramTypedArray.getInt(k, parama.e.X));
        break;
      case 40: 
        paramContext.a(40, paramTypedArray.getFloat(k, parama.e.V));
        break;
      case 39: 
        paramContext.a(39, paramTypedArray.getFloat(k, parama.e.W));
        break;
      case 38: 
        k = paramTypedArray.getResourceId(k, parama.a);
        parama.a = k;
        paramContext.b(38, k);
        break;
      case 37: 
        paramContext.a(37, paramTypedArray.getFloat(k, parama.e.z));
        break;
      case 34: 
        paramContext.b(34, paramTypedArray.getDimensionPixelSize(k, parama.e.J));
        break;
      case 31: 
        paramContext.b(31, paramTypedArray.getDimensionPixelSize(k, parama.e.M));
        break;
      case 28: 
        paramContext.b(28, paramTypedArray.getDimensionPixelSize(k, parama.e.I));
        break;
      case 27: 
        paramContext.b(27, paramTypedArray.getInt(k, parama.e.G));
        break;
      case 24: 
        paramContext.b(24, paramTypedArray.getDimensionPixelSize(k, parama.e.H));
        break;
      case 23: 
        paramContext.b(23, paramTypedArray.getLayoutDimension(k, parama.e.d));
        break;
      case 22: 
        paramContext.b(22, f[paramTypedArray.getInt(k, parama.c.b)]);
        break;
      case 21: 
        paramContext.b(21, paramTypedArray.getLayoutDimension(k, parama.e.e));
        break;
      case 20: 
        paramContext.a(20, paramTypedArray.getFloat(k, parama.e.y));
        break;
      case 19: 
        paramContext.a(19, paramTypedArray.getFloat(k, parama.e.h));
        break;
      case 18: 
        paramContext.b(18, paramTypedArray.getDimensionPixelOffset(k, parama.e.g));
        break;
      case 17: 
        paramContext.b(17, paramTypedArray.getDimensionPixelOffset(k, parama.e.f));
        break;
      case 16: 
        paramContext.b(16, paramTypedArray.getDimensionPixelSize(k, parama.e.P));
        break;
      case 15: 
        paramContext.b(15, paramTypedArray.getDimensionPixelSize(k, parama.e.T));
        break;
      case 14: 
        paramContext.b(14, paramTypedArray.getDimensionPixelSize(k, parama.e.Q));
        break;
      case 13: 
        paramContext.b(13, paramTypedArray.getDimensionPixelSize(k, parama.e.O));
        break;
      case 12: 
        paramContext.b(12, paramTypedArray.getDimensionPixelSize(k, parama.e.S));
        break;
      case 11: 
        paramContext.b(11, paramTypedArray.getDimensionPixelSize(k, parama.e.R));
        break;
      case 8: 
        paramContext.b(8, paramTypedArray.getDimensionPixelSize(k, parama.e.L));
        break;
      case 7: 
        paramContext.b(7, paramTypedArray.getDimensionPixelOffset(k, parama.e.F));
        break;
      case 6: 
        paramContext.b(6, paramTypedArray.getDimensionPixelOffset(k, parama.e.E));
        break;
      case 5: 
        paramContext.c(5, paramTypedArray.getString(k));
        break;
      case 2: 
        paramContext.b(2, paramTypedArray.getDimensionPixelSize(k, parama.e.K));
      }
    }
  }
  
  private String z(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "undefined";
    case 7: 
      return "end";
    case 6: 
      return "start";
    case 5: 
      return "baseline";
    case 4: 
      return "bottom";
    case 3: 
      return "top";
    case 2: 
      return "right";
    }
    return "left";
  }
  
  public void c(ConstraintLayout paramConstraintLayout)
  {
    d(paramConstraintLayout, true);
    paramConstraintLayout.setConstraintSet(null);
    paramConstraintLayout.requestLayout();
  }
  
  void d(ConstraintLayout paramConstraintLayout, boolean paramBoolean)
  {
    int i = paramConstraintLayout.getChildCount();
    Object localObject1 = new HashSet(this.e.keySet());
    int j = 0;
    Object localObject2;
    Object localObject3;
    Object localObject4;
    Object localObject5;
    Object localObject6;
    for (int k = 0; k < i; k++)
    {
      localObject2 = paramConstraintLayout.getChildAt(k);
      int m = ((View)localObject2).getId();
      if (!this.e.containsKey(Integer.valueOf(m)))
      {
        localObject3 = new StringBuilder();
        ((StringBuilder)localObject3).append("id unknown ");
        ((StringBuilder)localObject3).append(androidx.constraintlayout.motion.widget.a.b((View)localObject2));
        Log.w("ConstraintSet", ((StringBuilder)localObject3).toString());
      }
      else
      {
        if ((this.d) && (m == -1)) {
          throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
        }
        if (m != -1) {
          if (this.e.containsKey(Integer.valueOf(m)))
          {
            ((HashSet)localObject1).remove(Integer.valueOf(m));
            localObject3 = (a)this.e.get(Integer.valueOf(m));
            if (localObject3 != null)
            {
              if ((localObject2 instanceof a))
              {
                ((a)localObject3).e.j0 = 1;
                localObject4 = (a)localObject2;
                ((View)localObject4).setId(m);
                ((a)localObject4).setType(((a)localObject3).e.h0);
                ((a)localObject4).setMargin(((a)localObject3).e.i0);
                ((a)localObject4).setAllowsGoneWidget(((a)localObject3).e.p0);
                localObject5 = ((a)localObject3).e;
                localObject6 = ((b)localObject5).k0;
                if (localObject6 != null)
                {
                  ((b)localObject4).setReferencedIds((int[])localObject6);
                }
                else
                {
                  localObject6 = ((b)localObject5).l0;
                  if (localObject6 != null)
                  {
                    ((b)localObject5).k0 = n((View)localObject4, (String)localObject6);
                    ((b)localObject4).setReferencedIds(((a)localObject3).e.k0);
                  }
                }
              }
              localObject4 = (ConstraintLayout.b)((View)localObject2).getLayoutParams();
              ((ConstraintLayout.b)localObject4).b();
              ((a)localObject3).d((ConstraintLayout.b)localObject4);
              if (paramBoolean) {
                ConstraintAttribute.e((View)localObject2, ((a)localObject3).g);
              }
              ((View)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject4);
              localObject4 = ((a)localObject3).c;
              if (((d)localObject4).c == 0) {
                ((View)localObject2).setVisibility(((d)localObject4).b);
              }
              ((View)localObject2).setAlpha(((a)localObject3).c.d);
              ((View)localObject2).setRotation(((a)localObject3).f.b);
              ((View)localObject2).setRotationX(((a)localObject3).f.c);
              ((View)localObject2).setRotationY(((a)localObject3).f.d);
              ((View)localObject2).setScaleX(((a)localObject3).f.e);
              ((View)localObject2).setScaleY(((a)localObject3).f.f);
              localObject4 = ((a)localObject3).f;
              if (((e)localObject4).i != -1)
              {
                localObject4 = ((View)((View)localObject2).getParent()).findViewById(((a)localObject3).f.i);
                if (localObject4 != null)
                {
                  float f1 = (((View)localObject4).getTop() + ((View)localObject4).getBottom()) / 2.0F;
                  float f2 = (((View)localObject4).getLeft() + ((View)localObject4).getRight()) / 2.0F;
                  if ((((View)localObject2).getRight() - ((View)localObject2).getLeft() > 0) && (((View)localObject2).getBottom() - ((View)localObject2).getTop() > 0))
                  {
                    float f3 = ((View)localObject2).getLeft();
                    float f4 = ((View)localObject2).getTop();
                    ((View)localObject2).setPivotX(f2 - f3);
                    ((View)localObject2).setPivotY(f1 - f4);
                  }
                }
              }
              else
              {
                if (!Float.isNaN(((e)localObject4).g)) {
                  ((View)localObject2).setPivotX(((a)localObject3).f.g);
                }
                if (!Float.isNaN(((a)localObject3).f.h)) {
                  ((View)localObject2).setPivotY(((a)localObject3).f.h);
                }
              }
              ((View)localObject2).setTranslationX(((a)localObject3).f.j);
              ((View)localObject2).setTranslationY(((a)localObject3).f.k);
              ((View)localObject2).setTranslationZ(((a)localObject3).f.l);
              localObject3 = ((a)localObject3).f;
              if (((e)localObject3).m) {
                ((View)localObject2).setElevation(((e)localObject3).n);
              }
            }
          }
          else
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append("WARNING NO CONSTRAINTS for view ");
            ((StringBuilder)localObject2).append(m);
            Log.v("ConstraintSet", ((StringBuilder)localObject2).toString());
          }
        }
      }
    }
    localObject1 = ((HashSet)localObject1).iterator();
    for (;;)
    {
      k = j;
      if (!((Iterator)localObject1).hasNext()) {
        break;
      }
      localObject3 = (Integer)((Iterator)localObject1).next();
      localObject2 = (a)this.e.get(localObject3);
      if (localObject2 != null)
      {
        if (((a)localObject2).e.j0 == 1)
        {
          localObject4 = new a(paramConstraintLayout.getContext());
          ((View)localObject4).setId(((Integer)localObject3).intValue());
          localObject5 = ((a)localObject2).e;
          localObject6 = ((b)localObject5).k0;
          if (localObject6 != null)
          {
            ((b)localObject4).setReferencedIds((int[])localObject6);
          }
          else
          {
            localObject6 = ((b)localObject5).l0;
            if (localObject6 != null)
            {
              ((b)localObject5).k0 = n((View)localObject4, (String)localObject6);
              ((b)localObject4).setReferencedIds(((a)localObject2).e.k0);
            }
          }
          ((a)localObject4).setType(((a)localObject2).e.h0);
          ((a)localObject4).setMargin(((a)localObject2).e.i0);
          localObject5 = paramConstraintLayout.d();
          ((b)localObject4).s();
          ((a)localObject2).d((ConstraintLayout.b)localObject5);
          paramConstraintLayout.addView((View)localObject4, (ViewGroup.LayoutParams)localObject5);
        }
        if (((a)localObject2).e.a)
        {
          localObject4 = new g(paramConstraintLayout.getContext());
          ((View)localObject4).setId(((Integer)localObject3).intValue());
          localObject3 = paramConstraintLayout.d();
          ((a)localObject2).d((ConstraintLayout.b)localObject3);
          paramConstraintLayout.addView((View)localObject4, (ViewGroup.LayoutParams)localObject3);
        }
      }
    }
    while (k < i)
    {
      localObject1 = paramConstraintLayout.getChildAt(k);
      if ((localObject1 instanceof b)) {
        ((b)localObject1).i(paramConstraintLayout);
      }
      k++;
    }
  }
  
  public void e(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, float paramFloat)
  {
    if (paramInt4 >= 0)
    {
      if (paramInt7 >= 0)
      {
        if ((paramFloat > 0.0F) && (paramFloat <= 1.0F))
        {
          a locala;
          if ((paramInt3 != 1) && (paramInt3 != 2))
          {
            if ((paramInt3 != 6) && (paramInt3 != 7))
            {
              k(paramInt1, 3, paramInt2, paramInt3, paramInt4);
              k(paramInt1, 4, paramInt5, paramInt6, paramInt7);
              locala = (a)this.e.get(Integer.valueOf(paramInt1));
              if (locala != null) {
                locala.e.z = paramFloat;
              }
            }
            else
            {
              k(paramInt1, 6, paramInt2, paramInt3, paramInt4);
              k(paramInt1, 7, paramInt5, paramInt6, paramInt7);
              locala = (a)this.e.get(Integer.valueOf(paramInt1));
              if (locala != null) {
                locala.e.y = paramFloat;
              }
            }
          }
          else
          {
            k(paramInt1, 1, paramInt2, paramInt3, paramInt4);
            k(paramInt1, 2, paramInt5, paramInt6, paramInt7);
            locala = (a)this.e.get(Integer.valueOf(paramInt1));
            if (locala != null) {
              locala.e.y = paramFloat;
            }
          }
          return;
        }
        throw new IllegalArgumentException("bias must be between 0 and 1 inclusive");
      }
      throw new IllegalArgumentException("margin must be > 0");
    }
    throw new IllegalArgumentException("margin must be > 0");
  }
  
  public void f(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      e(paramInt1, 0, 3, 0, 0, 4, 0, 0.5F);
    } else {
      e(paramInt1, paramInt2, 4, 0, paramInt2, 3, 0, 0.5F);
    }
  }
  
  public void g(Context paramContext, int paramInt)
  {
    h((ConstraintLayout)LayoutInflater.from(paramContext).inflate(paramInt, null));
  }
  
  public void h(ConstraintLayout paramConstraintLayout)
  {
    int i = paramConstraintLayout.getChildCount();
    this.e.clear();
    for (int j = 0; j < i; j++)
    {
      Object localObject1 = paramConstraintLayout.getChildAt(j);
      Object localObject2 = (ConstraintLayout.b)((View)localObject1).getLayoutParams();
      int k = ((View)localObject1).getId();
      if ((this.d) && (k == -1)) {
        throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
      }
      if (!this.e.containsKey(Integer.valueOf(k))) {
        this.e.put(Integer.valueOf(k), new a());
      }
      a locala = (a)this.e.get(Integer.valueOf(k));
      if (locala != null)
      {
        locala.g = ConstraintAttribute.a(this.c, (View)localObject1);
        a.a(locala, k, (ConstraintLayout.b)localObject2);
        locala.c.b = ((View)localObject1).getVisibility();
        locala.c.d = ((View)localObject1).getAlpha();
        locala.f.b = ((View)localObject1).getRotation();
        locala.f.c = ((View)localObject1).getRotationX();
        locala.f.d = ((View)localObject1).getRotationY();
        locala.f.e = ((View)localObject1).getScaleX();
        locala.f.f = ((View)localObject1).getScaleY();
        float f1 = ((View)localObject1).getPivotX();
        float f2 = ((View)localObject1).getPivotY();
        if ((f1 != 0.0D) || (f2 != 0.0D))
        {
          localObject2 = locala.f;
          ((e)localObject2).g = f1;
          ((e)localObject2).h = f2;
        }
        locala.f.j = ((View)localObject1).getTranslationX();
        locala.f.k = ((View)localObject1).getTranslationY();
        locala.f.l = ((View)localObject1).getTranslationZ();
        localObject2 = locala.f;
        if (((e)localObject2).m) {
          ((e)localObject2).n = ((View)localObject1).getElevation();
        }
        if ((localObject1 instanceof a))
        {
          localObject1 = (a)localObject1;
          locala.e.p0 = ((a)localObject1).getAllowsGoneWidget();
          locala.e.k0 = ((b)localObject1).getReferencedIds();
          locala.e.h0 = ((a)localObject1).getType();
          locala.e.i0 = ((a)localObject1).getMargin();
        }
      }
    }
  }
  
  public void i(e parame)
  {
    int i = parame.getChildCount();
    this.e.clear();
    for (int j = 0; j < i; j++)
    {
      View localView = parame.getChildAt(j);
      e.a locala = (e.a)localView.getLayoutParams();
      int k = localView.getId();
      if ((this.d) && (k == -1)) {
        throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
      }
      if (!this.e.containsKey(Integer.valueOf(k))) {
        this.e.put(Integer.valueOf(k), new a());
      }
      a locala1 = (a)this.e.get(Integer.valueOf(k));
      if (locala1 != null)
      {
        if ((localView instanceof b)) {
          a.b(locala1, (b)localView, k, locala);
        }
        a.c(locala1, k, locala);
      }
    }
  }
  
  public void j(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!this.e.containsKey(Integer.valueOf(paramInt1))) {
      this.e.put(Integer.valueOf(paramInt1), new a());
    }
    Object localObject = (a)this.e.get(Integer.valueOf(paramInt1));
    if (localObject == null) {
      return;
    }
    switch (paramInt2)
    {
    default: 
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(z(paramInt2));
      ((StringBuilder)localObject).append(" to ");
      ((StringBuilder)localObject).append(z(paramInt4));
      ((StringBuilder)localObject).append(" unknown");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 7: 
      if (paramInt4 == 7)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).x = paramInt3;
        ((b)localObject).w = -1;
      }
      else if (paramInt4 == 6)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).w = paramInt3;
        ((b)localObject).x = -1;
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("right to ");
        ((StringBuilder)localObject).append(z(paramInt4));
        ((StringBuilder)localObject).append(" undefined");
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
      break;
    case 6: 
      if (paramInt4 == 6)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).v = paramInt3;
        ((b)localObject).u = -1;
      }
      else if (paramInt4 == 7)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).u = paramInt3;
        ((b)localObject).v = -1;
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("right to ");
        ((StringBuilder)localObject).append(z(paramInt4));
        ((StringBuilder)localObject).append(" undefined");
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
      break;
    case 5: 
      if (paramInt4 == 5)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).r = paramInt3;
        ((b)localObject).q = -1;
        ((b)localObject).p = -1;
        ((b)localObject).n = -1;
        ((b)localObject).o = -1;
      }
      else if (paramInt4 == 3)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).s = paramInt3;
        ((b)localObject).q = -1;
        ((b)localObject).p = -1;
        ((b)localObject).n = -1;
        ((b)localObject).o = -1;
      }
      else if (paramInt4 == 4)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).t = paramInt3;
        ((b)localObject).q = -1;
        ((b)localObject).p = -1;
        ((b)localObject).n = -1;
        ((b)localObject).o = -1;
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("right to ");
        ((StringBuilder)localObject).append(z(paramInt4));
        ((StringBuilder)localObject).append(" undefined");
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
      break;
    case 4: 
      if (paramInt4 == 4)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).q = paramInt3;
        ((b)localObject).p = -1;
        ((b)localObject).r = -1;
        ((b)localObject).s = -1;
        ((b)localObject).t = -1;
      }
      else if (paramInt4 == 3)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).p = paramInt3;
        ((b)localObject).q = -1;
        ((b)localObject).r = -1;
        ((b)localObject).s = -1;
        ((b)localObject).t = -1;
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("right to ");
        ((StringBuilder)localObject).append(z(paramInt4));
        ((StringBuilder)localObject).append(" undefined");
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
      break;
    case 3: 
      if (paramInt4 == 3)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).n = paramInt3;
        ((b)localObject).o = -1;
        ((b)localObject).r = -1;
        ((b)localObject).s = -1;
        ((b)localObject).t = -1;
      }
      else if (paramInt4 == 4)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).o = paramInt3;
        ((b)localObject).n = -1;
        ((b)localObject).r = -1;
        ((b)localObject).s = -1;
        ((b)localObject).t = -1;
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("right to ");
        ((StringBuilder)localObject).append(z(paramInt4));
        ((StringBuilder)localObject).append(" undefined");
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
      break;
    case 2: 
      if (paramInt4 == 1)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).l = paramInt3;
        ((b)localObject).m = -1;
      }
      else if (paramInt4 == 2)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).m = paramInt3;
        ((b)localObject).l = -1;
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("right to ");
        ((StringBuilder)localObject).append(z(paramInt4));
        ((StringBuilder)localObject).append(" undefined");
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
      break;
    case 1: 
      if (paramInt4 == 1)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).j = paramInt3;
        ((b)localObject).k = -1;
      }
      else
      {
        if (paramInt4 != 2) {
          break label1023;
        }
        localObject = ((a)localObject).e;
        ((b)localObject).k = paramInt3;
        ((b)localObject).j = -1;
      }
      break;
    }
    return;
    label1023:
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("left to ");
    ((StringBuilder)localObject).append(z(paramInt4));
    ((StringBuilder)localObject).append(" undefined");
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public void k(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if (!this.e.containsKey(Integer.valueOf(paramInt1))) {
      this.e.put(Integer.valueOf(paramInt1), new a());
    }
    Object localObject = (a)this.e.get(Integer.valueOf(paramInt1));
    if (localObject == null) {
      return;
    }
    b localb;
    switch (paramInt2)
    {
    default: 
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(z(paramInt2));
      ((StringBuilder)localObject).append(" to ");
      ((StringBuilder)localObject).append(z(paramInt4));
      ((StringBuilder)localObject).append(" unknown");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 7: 
      if (paramInt4 == 7)
      {
        localb = ((a)localObject).e;
        localb.x = paramInt3;
        localb.w = -1;
      }
      else
      {
        if (paramInt4 != 6) {
          break label231;
        }
        localb = ((a)localObject).e;
        localb.w = paramInt3;
        localb.x = -1;
      }
      ((a)localObject).e.L = paramInt5;
      break;
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(z(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 6: 
      if (paramInt4 == 6)
      {
        localb = ((a)localObject).e;
        localb.v = paramInt3;
        localb.u = -1;
      }
      else
      {
        if (paramInt4 != 7) {
          break label351;
        }
        localb = ((a)localObject).e;
        localb.u = paramInt3;
        localb.v = -1;
      }
      ((a)localObject).e.M = paramInt5;
      break;
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(z(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 5: 
      if (paramInt4 == 5)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).r = paramInt3;
        ((b)localObject).q = -1;
        ((b)localObject).p = -1;
        ((b)localObject).n = -1;
        ((b)localObject).o = -1;
      }
      else if (paramInt4 == 3)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).s = paramInt3;
        ((b)localObject).q = -1;
        ((b)localObject).p = -1;
        ((b)localObject).n = -1;
        ((b)localObject).o = -1;
      }
      else if (paramInt4 == 4)
      {
        localObject = ((a)localObject).e;
        ((b)localObject).t = paramInt3;
        ((b)localObject).q = -1;
        ((b)localObject).p = -1;
        ((b)localObject).n = -1;
        ((b)localObject).o = -1;
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("right to ");
        ((StringBuilder)localObject).append(z(paramInt4));
        ((StringBuilder)localObject).append(" undefined");
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
      break;
    case 4: 
      if (paramInt4 == 4)
      {
        localb = ((a)localObject).e;
        localb.q = paramInt3;
        localb.p = -1;
        localb.r = -1;
        localb.s = -1;
        localb.t = -1;
      }
      else
      {
        if (paramInt4 != 3) {
          break label695;
        }
        localb = ((a)localObject).e;
        localb.p = paramInt3;
        localb.q = -1;
        localb.r = -1;
        localb.s = -1;
        localb.t = -1;
      }
      ((a)localObject).e.K = paramInt5;
      break;
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(z(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 3: 
      if (paramInt4 == 3)
      {
        localb = ((a)localObject).e;
        localb.n = paramInt3;
        localb.o = -1;
        localb.r = -1;
        localb.s = -1;
        localb.t = -1;
      }
      else
      {
        if (paramInt4 != 4) {
          break label849;
        }
        localb = ((a)localObject).e;
        localb.o = paramInt3;
        localb.n = -1;
        localb.r = -1;
        localb.s = -1;
        localb.t = -1;
      }
      ((a)localObject).e.J = paramInt5;
      break;
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(z(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 2: 
      label695:
      label849:
      if (paramInt4 == 1)
      {
        localb = ((a)localObject).e;
        localb.l = paramInt3;
        localb.m = -1;
      }
      else
      {
        if (paramInt4 != 2) {
          break label967;
        }
        localb = ((a)localObject).e;
        localb.m = paramInt3;
        localb.l = -1;
      }
      ((a)localObject).e.I = paramInt5;
      break;
      label967:
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(z(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 1: 
      label231:
      if (paramInt4 == 1)
      {
        localb = ((a)localObject).e;
        localb.j = paramInt3;
        localb.k = -1;
      }
      else
      {
        if (paramInt4 != 2) {
          break label1083;
        }
        localb = ((a)localObject).e;
        localb.k = paramInt3;
        localb.j = -1;
      }
      label351:
      ((a)localObject).e.H = paramInt5;
    }
    return;
    label1083:
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Left to ");
    ((StringBuilder)localObject).append(z(paramInt4));
    ((StringBuilder)localObject).append(" undefined");
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public void l(int paramInt1, int paramInt2)
  {
    p(paramInt1).e.e = paramInt2;
  }
  
  public void m(int paramInt1, int paramInt2)
  {
    p(paramInt1).e.d = paramInt2;
  }
  
  public void q(Context paramContext, int paramInt)
  {
    XmlResourceParser localXmlResourceParser = paramContext.getResources().getXml(paramInt);
    try
    {
      for (paramInt = localXmlResourceParser.getEventType(); paramInt != 1; paramInt = localXmlResourceParser.next()) {
        if (paramInt != 0)
        {
          if (paramInt == 2)
          {
            String str = localXmlResourceParser.getName();
            a locala = o(paramContext, Xml.asAttributeSet(localXmlResourceParser), false);
            if (str.equalsIgnoreCase("Guideline")) {
              locala.e.a = true;
            }
            this.e.put(Integer.valueOf(locala.a), locala);
          }
        }
        else {
          localXmlResourceParser.getName();
        }
      }
      return;
    }
    catch (IOException paramContext)
    {
      paramContext.printStackTrace();
    }
    catch (XmlPullParserException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public void r(Context paramContext, XmlPullParser paramXmlPullParser)
  {
    try
    {
      int i = paramXmlPullParser.getEventType();
      Object localObject1 = null;
      while (i != 1)
      {
        if (i != 0)
        {
          int j = -1;
          Object localObject2;
          if (i != 2)
          {
            if (i == 3)
            {
              localObject2 = paramXmlPullParser.getName().toLowerCase(Locale.ROOT);
              switch (((String)localObject2).hashCode())
              {
              default: 
                break;
              case 2146106725: 
                if (((String)localObject2).equals("constraintset")) {
                  j = 0;
                }
                break;
              case 426575017: 
                if (((String)localObject2).equals("constraintoverride")) {
                  j = 2;
                }
                break;
              case -190376483: 
                if (((String)localObject2).equals("constraint")) {
                  j = 1;
                }
                break;
              case -2075718416: 
                if (((String)localObject2).equals("guideline")) {
                  j = 3;
                }
                break;
              }
              if (j != 0)
              {
                if ((j != 1) && (j != 2) && (j != 3)) {
                  break label978;
                }
                this.e.put(Integer.valueOf(((a)localObject1).a), localObject1);
                localObject1 = null;
              }
            }
          }
          else
          {
            localObject2 = paramXmlPullParser.getName();
            switch (((String)localObject2).hashCode())
            {
            default: 
              break;
            case 1803088381: 
              if (((String)localObject2).equals("Constraint")) {
                j = 0;
              }
              break;
            case 1791837707: 
              if (((String)localObject2).equals("CustomAttribute")) {
                j = 8;
              }
              break;
            case 1331510167: 
              if (((String)localObject2).equals("Barrier")) {
                j = 3;
              }
              break;
            case 366511058: 
              if (((String)localObject2).equals("CustomMethod")) {
                j = 9;
              }
              break;
            case -71750448: 
              if (((String)localObject2).equals("Guideline")) {
                j = 2;
              }
              break;
            case -1238332596: 
              if (((String)localObject2).equals("Transform")) {
                j = 5;
              }
              break;
            case -1269513683: 
              if (((String)localObject2).equals("PropertySet")) {
                j = 4;
              }
              break;
            case -1962203927: 
              if (((String)localObject2).equals("ConstraintOverride")) {
                j = 1;
              }
              break;
            case -1984451626: 
              if (((String)localObject2).equals("Motion")) {
                j = 7;
              }
              break;
            case -2025855158: 
              boolean bool = ((String)localObject2).equals("Layout");
              if (bool) {
                j = 6;
              }
              break;
            }
            switch (j)
            {
            default: 
              break;
            case 8: 
            case 9: 
              if (localObject1 != null)
              {
                ConstraintAttribute.d(paramContext, paramXmlPullParser, ((a)localObject1).g);
                break;
              }
              localObject1 = new java/lang/RuntimeException;
              paramContext = new java/lang/StringBuilder;
              paramContext.<init>();
              paramContext.append("XML parser error must be within a Constraint ");
              paramContext.append(paramXmlPullParser.getLineNumber());
              ((RuntimeException)localObject1).<init>(paramContext.toString());
              throw ((Throwable)localObject1);
            case 7: 
              if (localObject1 != null)
              {
                ((a)localObject1).d.b(paramContext, Xml.asAttributeSet(paramXmlPullParser));
                break;
              }
              localObject1 = new java/lang/RuntimeException;
              paramContext = new java/lang/StringBuilder;
              paramContext.<init>();
              paramContext.append("XML parser error must be within a Constraint ");
              paramContext.append(paramXmlPullParser.getLineNumber());
              ((RuntimeException)localObject1).<init>(paramContext.toString());
              throw ((Throwable)localObject1);
            case 6: 
              if (localObject1 != null)
              {
                ((a)localObject1).e.b(paramContext, Xml.asAttributeSet(paramXmlPullParser));
                break;
              }
              localObject1 = new java/lang/RuntimeException;
              paramContext = new java/lang/StringBuilder;
              paramContext.<init>();
              paramContext.append("XML parser error must be within a Constraint ");
              paramContext.append(paramXmlPullParser.getLineNumber());
              ((RuntimeException)localObject1).<init>(paramContext.toString());
              throw ((Throwable)localObject1);
            case 5: 
              if (localObject1 != null)
              {
                ((a)localObject1).f.b(paramContext, Xml.asAttributeSet(paramXmlPullParser));
                break;
              }
              localObject1 = new java/lang/RuntimeException;
              paramContext = new java/lang/StringBuilder;
              paramContext.<init>();
              paramContext.append("XML parser error must be within a Constraint ");
              paramContext.append(paramXmlPullParser.getLineNumber());
              ((RuntimeException)localObject1).<init>(paramContext.toString());
              throw ((Throwable)localObject1);
            case 4: 
              if (localObject1 != null)
              {
                ((a)localObject1).c.b(paramContext, Xml.asAttributeSet(paramXmlPullParser));
                break;
              }
              paramContext = new java/lang/RuntimeException;
              localObject1 = new java/lang/StringBuilder;
              ((StringBuilder)localObject1).<init>();
              ((StringBuilder)localObject1).append("XML parser error must be within a Constraint ");
              ((StringBuilder)localObject1).append(paramXmlPullParser.getLineNumber());
              paramContext.<init>(((StringBuilder)localObject1).toString());
              throw paramContext;
            case 3: 
              localObject1 = o(paramContext, Xml.asAttributeSet(paramXmlPullParser), false);
              ((a)localObject1).e.j0 = 1;
              break;
            case 2: 
              localObject1 = o(paramContext, Xml.asAttributeSet(paramXmlPullParser), false);
              localObject2 = ((a)localObject1).e;
              ((b)localObject2).a = true;
              ((b)localObject2).b = true;
              break;
            case 1: 
              localObject1 = o(paramContext, Xml.asAttributeSet(paramXmlPullParser), true);
              break;
            case 0: 
              localObject1 = o(paramContext, Xml.asAttributeSet(paramXmlPullParser), false);
            }
          }
        }
        else
        {
          paramXmlPullParser.getName();
        }
        label978:
        i = paramXmlPullParser.next();
      }
      return;
    }
    catch (IOException paramContext)
    {
      paramContext.printStackTrace();
    }
    catch (XmlPullParserException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public void y(int paramInt, float paramFloat)
  {
    p(paramInt).e.W = paramFloat;
  }
  
  public static class a
  {
    int a;
    String b;
    public final d.d c = new d.d();
    public final d.c d = new d.c();
    public final d.b e = new d.b();
    public final d.e f = new d.e();
    public HashMap<String, ConstraintAttribute> g = new HashMap();
    a h;
    
    private void f(int paramInt, ConstraintLayout.b paramb)
    {
      this.a = paramInt;
      d.b localb = this.e;
      localb.j = paramb.e;
      localb.k = paramb.f;
      localb.l = paramb.g;
      localb.m = paramb.h;
      localb.n = paramb.i;
      localb.o = paramb.j;
      localb.p = paramb.k;
      localb.q = paramb.l;
      localb.r = paramb.m;
      localb.s = paramb.n;
      localb.t = paramb.o;
      localb.u = paramb.s;
      localb.v = paramb.t;
      localb.w = paramb.u;
      localb.x = paramb.v;
      localb.y = paramb.G;
      localb.z = paramb.H;
      localb.A = paramb.I;
      localb.B = paramb.p;
      localb.C = paramb.q;
      localb.D = paramb.r;
      localb.E = paramb.X;
      localb.F = paramb.Y;
      localb.G = paramb.Z;
      localb.h = paramb.c;
      localb.f = paramb.a;
      localb.g = paramb.b;
      localb.d = paramb.width;
      localb.e = paramb.height;
      localb.H = paramb.leftMargin;
      localb.I = paramb.rightMargin;
      localb.J = paramb.topMargin;
      localb.K = paramb.bottomMargin;
      localb.N = paramb.D;
      localb.V = paramb.M;
      localb.W = paramb.L;
      localb.Y = paramb.O;
      localb.X = paramb.N;
      localb.n0 = paramb.a0;
      localb.o0 = paramb.b0;
      localb.Z = paramb.P;
      localb.a0 = paramb.Q;
      localb.b0 = paramb.T;
      localb.c0 = paramb.U;
      localb.d0 = paramb.R;
      localb.e0 = paramb.S;
      localb.f0 = paramb.V;
      localb.g0 = paramb.W;
      localb.m0 = paramb.c0;
      localb.P = paramb.x;
      localb.R = paramb.z;
      localb.O = paramb.w;
      localb.Q = paramb.y;
      localb.T = paramb.A;
      localb.S = paramb.B;
      localb.U = paramb.C;
      localb.q0 = paramb.d0;
      localb.L = paramb.getMarginEnd();
      this.e.M = paramb.getMarginStart();
    }
    
    private void g(int paramInt, e.a parama)
    {
      f(paramInt, parama);
      this.c.d = parama.x0;
      d.e locale = this.f;
      locale.b = parama.A0;
      locale.c = parama.B0;
      locale.d = parama.C0;
      locale.e = parama.D0;
      locale.f = parama.E0;
      locale.g = parama.F0;
      locale.h = parama.G0;
      locale.j = parama.H0;
      locale.k = parama.I0;
      locale.l = parama.J0;
      locale.n = parama.z0;
      locale.m = parama.y0;
    }
    
    private void h(b paramb, int paramInt, e.a parama)
    {
      g(paramInt, parama);
      if ((paramb instanceof a))
      {
        parama = this.e;
        parama.j0 = 1;
        paramb = (a)paramb;
        parama.h0 = paramb.getType();
        this.e.k0 = paramb.getReferencedIds();
        this.e.i0 = paramb.getMargin();
      }
    }
    
    public void d(ConstraintLayout.b paramb)
    {
      d.b localb = this.e;
      paramb.e = localb.j;
      paramb.f = localb.k;
      paramb.g = localb.l;
      paramb.h = localb.m;
      paramb.i = localb.n;
      paramb.j = localb.o;
      paramb.k = localb.p;
      paramb.l = localb.q;
      paramb.m = localb.r;
      paramb.n = localb.s;
      paramb.o = localb.t;
      paramb.s = localb.u;
      paramb.t = localb.v;
      paramb.u = localb.w;
      paramb.v = localb.x;
      paramb.leftMargin = localb.H;
      paramb.rightMargin = localb.I;
      paramb.topMargin = localb.J;
      paramb.bottomMargin = localb.K;
      paramb.A = localb.T;
      paramb.B = localb.S;
      paramb.x = localb.P;
      paramb.z = localb.R;
      paramb.G = localb.y;
      paramb.H = localb.z;
      paramb.p = localb.B;
      paramb.q = localb.C;
      paramb.r = localb.D;
      paramb.I = localb.A;
      paramb.X = localb.E;
      paramb.Y = localb.F;
      paramb.M = localb.V;
      paramb.L = localb.W;
      paramb.O = localb.Y;
      paramb.N = localb.X;
      paramb.a0 = localb.n0;
      paramb.b0 = localb.o0;
      paramb.P = localb.Z;
      paramb.Q = localb.a0;
      paramb.T = localb.b0;
      paramb.U = localb.c0;
      paramb.R = localb.d0;
      paramb.S = localb.e0;
      paramb.V = localb.f0;
      paramb.W = localb.g0;
      paramb.Z = localb.G;
      paramb.c = localb.h;
      paramb.a = localb.f;
      paramb.b = localb.g;
      paramb.width = localb.d;
      paramb.height = localb.e;
      String str = localb.m0;
      if (str != null) {
        paramb.c0 = str;
      }
      paramb.d0 = localb.q0;
      paramb.setMarginStart(localb.M);
      paramb.setMarginEnd(this.e.L);
      paramb.b();
    }
    
    public a e()
    {
      a locala = new a();
      locala.e.a(this.e);
      locala.d.a(this.d);
      locala.c.a(this.c);
      locala.f.a(this.f);
      locala.a = this.a;
      locala.h = this.h;
      return locala;
    }
    
    static class a
    {
      int[] a = new int[10];
      int[] b = new int[10];
      int c = 0;
      int[] d = new int[10];
      float[] e = new float[10];
      int f = 0;
      int[] g = new int[5];
      String[] h = new String[5];
      int i = 0;
      int[] j = new int[4];
      boolean[] k = new boolean[4];
      int l = 0;
      
      void a(int paramInt, float paramFloat)
      {
        int m = this.f;
        Object localObject = this.d;
        if (m >= localObject.length)
        {
          this.d = Arrays.copyOf((int[])localObject, localObject.length * 2);
          localObject = this.e;
          this.e = Arrays.copyOf((float[])localObject, localObject.length * 2);
        }
        localObject = this.d;
        m = this.f;
        localObject[m] = paramInt;
        localObject = this.e;
        this.f = (m + 1);
        localObject[m] = paramFloat;
      }
      
      void b(int paramInt1, int paramInt2)
      {
        int m = this.c;
        int[] arrayOfInt = this.a;
        if (m >= arrayOfInt.length)
        {
          this.a = Arrays.copyOf(arrayOfInt, arrayOfInt.length * 2);
          arrayOfInt = this.b;
          this.b = Arrays.copyOf(arrayOfInt, arrayOfInt.length * 2);
        }
        arrayOfInt = this.a;
        m = this.c;
        arrayOfInt[m] = paramInt1;
        arrayOfInt = this.b;
        this.c = (m + 1);
        arrayOfInt[m] = paramInt2;
      }
      
      void c(int paramInt, String paramString)
      {
        int m = this.i;
        Object localObject = this.g;
        if (m >= localObject.length)
        {
          this.g = Arrays.copyOf((int[])localObject, localObject.length * 2);
          localObject = this.h;
          this.h = ((String[])Arrays.copyOf((Object[])localObject, localObject.length * 2));
        }
        localObject = this.g;
        m = this.i;
        localObject[m] = paramInt;
        localObject = this.h;
        this.i = (m + 1);
        localObject[m] = paramString;
      }
      
      void d(int paramInt, boolean paramBoolean)
      {
        int m = this.l;
        Object localObject = this.j;
        if (m >= localObject.length)
        {
          this.j = Arrays.copyOf((int[])localObject, localObject.length * 2);
          localObject = this.k;
          this.k = Arrays.copyOf((boolean[])localObject, localObject.length * 2);
        }
        localObject = this.j;
        m = this.l;
        localObject[m] = paramInt;
        localObject = this.k;
        this.l = (m + 1);
        localObject[m] = paramBoolean;
      }
    }
  }
  
  public static class b
  {
    private static SparseIntArray r0;
    public String A = null;
    public int B = -1;
    public int C = 0;
    public float D = 0.0F;
    public int E = -1;
    public int F = -1;
    public int G = -1;
    public int H = 0;
    public int I = 0;
    public int J = 0;
    public int K = 0;
    public int L = 0;
    public int M = 0;
    public int N = 0;
    public int O = -2147483648;
    public int P = -2147483648;
    public int Q = -2147483648;
    public int R = -2147483648;
    public int S = -2147483648;
    public int T = -2147483648;
    public int U = -2147483648;
    public float V = -1.0F;
    public float W = -1.0F;
    public int X = 0;
    public int Y = 0;
    public int Z = 0;
    public boolean a = false;
    public int a0 = 0;
    public boolean b = false;
    public int b0 = 0;
    public boolean c = false;
    public int c0 = 0;
    public int d;
    public int d0 = 0;
    public int e;
    public int e0 = 0;
    public int f = -1;
    public float f0 = 1.0F;
    public int g = -1;
    public float g0 = 1.0F;
    public float h = -1.0F;
    public int h0 = -1;
    public boolean i = true;
    public int i0 = 0;
    public int j = -1;
    public int j0 = -1;
    public int k = -1;
    public int[] k0;
    public int l = -1;
    public String l0;
    public int m = -1;
    public String m0;
    public int n = -1;
    public boolean n0 = false;
    public int o = -1;
    public boolean o0 = false;
    public int p = -1;
    public boolean p0 = true;
    public int q = -1;
    public int q0 = 0;
    public int r = -1;
    public int s = -1;
    public int t = -1;
    public int u = -1;
    public int v = -1;
    public int w = -1;
    public int x = -1;
    public float y = 0.5F;
    public float z = 0.5F;
    
    static
    {
      SparseIntArray localSparseIntArray = new SparseIntArray();
      r0 = localSparseIntArray;
      localSparseIntArray.append(j.j6, 24);
      r0.append(j.k6, 25);
      r0.append(j.m6, 28);
      r0.append(j.n6, 29);
      r0.append(j.s6, 35);
      r0.append(j.r6, 34);
      r0.append(j.T5, 4);
      r0.append(j.S5, 3);
      r0.append(j.Q5, 1);
      r0.append(j.y6, 6);
      r0.append(j.z6, 7);
      r0.append(j.a6, 17);
      r0.append(j.b6, 18);
      r0.append(j.c6, 19);
      r0.append(j.M5, 90);
      r0.append(j.y5, 26);
      r0.append(j.o6, 31);
      r0.append(j.p6, 32);
      r0.append(j.Z5, 10);
      r0.append(j.Y5, 9);
      r0.append(j.C6, 13);
      r0.append(j.F6, 16);
      r0.append(j.D6, 14);
      r0.append(j.A6, 11);
      r0.append(j.E6, 15);
      r0.append(j.B6, 12);
      r0.append(j.v6, 38);
      r0.append(j.h6, 37);
      r0.append(j.g6, 39);
      r0.append(j.u6, 40);
      r0.append(j.f6, 20);
      r0.append(j.t6, 36);
      r0.append(j.X5, 5);
      r0.append(j.i6, 91);
      r0.append(j.q6, 91);
      r0.append(j.l6, 91);
      r0.append(j.R5, 91);
      r0.append(j.P5, 91);
      r0.append(j.B5, 23);
      r0.append(j.D5, 27);
      r0.append(j.F5, 30);
      r0.append(j.G5, 8);
      r0.append(j.C5, 33);
      r0.append(j.E5, 2);
      r0.append(j.z5, 22);
      r0.append(j.A5, 21);
      r0.append(j.w6, 41);
      r0.append(j.d6, 42);
      r0.append(j.O5, 41);
      r0.append(j.N5, 42);
      r0.append(j.G6, 76);
      r0.append(j.U5, 61);
      r0.append(j.W5, 62);
      r0.append(j.V5, 63);
      r0.append(j.x6, 69);
      r0.append(j.e6, 70);
      r0.append(j.K5, 71);
      r0.append(j.I5, 72);
      r0.append(j.J5, 73);
      r0.append(j.L5, 74);
      r0.append(j.H5, 75);
    }
    
    public void a(b paramb)
    {
      this.a = paramb.a;
      this.d = paramb.d;
      this.b = paramb.b;
      this.e = paramb.e;
      this.f = paramb.f;
      this.g = paramb.g;
      this.h = paramb.h;
      this.i = paramb.i;
      this.j = paramb.j;
      this.k = paramb.k;
      this.l = paramb.l;
      this.m = paramb.m;
      this.n = paramb.n;
      this.o = paramb.o;
      this.p = paramb.p;
      this.q = paramb.q;
      this.r = paramb.r;
      this.s = paramb.s;
      this.t = paramb.t;
      this.u = paramb.u;
      this.v = paramb.v;
      this.w = paramb.w;
      this.x = paramb.x;
      this.y = paramb.y;
      this.z = paramb.z;
      this.A = paramb.A;
      this.B = paramb.B;
      this.C = paramb.C;
      this.D = paramb.D;
      this.E = paramb.E;
      this.F = paramb.F;
      this.G = paramb.G;
      this.H = paramb.H;
      this.I = paramb.I;
      this.J = paramb.J;
      this.K = paramb.K;
      this.L = paramb.L;
      this.M = paramb.M;
      this.N = paramb.N;
      this.O = paramb.O;
      this.P = paramb.P;
      this.Q = paramb.Q;
      this.R = paramb.R;
      this.S = paramb.S;
      this.T = paramb.T;
      this.U = paramb.U;
      this.V = paramb.V;
      this.W = paramb.W;
      this.X = paramb.X;
      this.Y = paramb.Y;
      this.Z = paramb.Z;
      this.a0 = paramb.a0;
      this.b0 = paramb.b0;
      this.c0 = paramb.c0;
      this.d0 = paramb.d0;
      this.e0 = paramb.e0;
      this.f0 = paramb.f0;
      this.g0 = paramb.g0;
      this.h0 = paramb.h0;
      this.i0 = paramb.i0;
      this.j0 = paramb.j0;
      this.m0 = paramb.m0;
      int[] arrayOfInt = paramb.k0;
      if ((arrayOfInt != null) && (paramb.l0 == null)) {
        this.k0 = Arrays.copyOf(arrayOfInt, arrayOfInt.length);
      } else {
        this.k0 = null;
      }
      this.l0 = paramb.l0;
      this.n0 = paramb.n0;
      this.o0 = paramb.o0;
      this.p0 = paramb.p0;
      this.q0 = paramb.q0;
    }
    
    void b(Context paramContext, AttributeSet paramAttributeSet)
    {
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, j.x5);
      this.b = true;
      int i1 = paramContext.getIndexCount();
      for (int i2 = 0; i2 < i1; i2++)
      {
        int i3 = paramContext.getIndex(i2);
        int i4 = r0.get(i3);
        switch (i4)
        {
        default: 
          switch (i4)
          {
          default: 
            switch (i4)
            {
            default: 
              paramAttributeSet = new StringBuilder();
              paramAttributeSet.append("Unknown attribute 0x");
              paramAttributeSet.append(Integer.toHexString(i3));
              paramAttributeSet.append("   ");
              paramAttributeSet.append(r0.get(i3));
              Log.w("ConstraintSet", paramAttributeSet.toString());
              break;
            case 91: 
              paramAttributeSet = new StringBuilder();
              paramAttributeSet.append("unused attribute 0x");
              paramAttributeSet.append(Integer.toHexString(i3));
              paramAttributeSet.append("   ");
              paramAttributeSet.append(r0.get(i3));
              Log.w("ConstraintSet", paramAttributeSet.toString());
              break;
            case 90: 
              this.i = paramContext.getBoolean(i3, this.i);
              break;
            case 89: 
              this.m0 = paramContext.getString(i3);
              break;
            case 88: 
              this.o0 = paramContext.getBoolean(i3, this.o0);
              break;
            case 87: 
              this.n0 = paramContext.getBoolean(i3, this.n0);
              break;
            case 86: 
              this.d0 = paramContext.getDimensionPixelSize(i3, this.d0);
              break;
            case 85: 
              this.e0 = paramContext.getDimensionPixelSize(i3, this.e0);
              break;
            case 84: 
              this.b0 = paramContext.getDimensionPixelSize(i3, this.b0);
              break;
            case 83: 
              this.c0 = paramContext.getDimensionPixelSize(i3, this.c0);
              break;
            case 82: 
              this.a0 = paramContext.getInt(i3, this.a0);
              break;
            case 81: 
              this.Z = paramContext.getInt(i3, this.Z);
              break;
            case 80: 
              this.N = paramContext.getDimensionPixelSize(i3, this.N);
              break;
            case 79: 
              this.U = paramContext.getDimensionPixelSize(i3, this.U);
              break;
            case 78: 
              this.t = d.a(paramContext, i3, this.t);
              break;
            case 77: 
              this.s = d.a(paramContext, i3, this.s);
              break;
            case 76: 
              this.q0 = paramContext.getInt(i3, this.q0);
              break;
            case 75: 
              this.p0 = paramContext.getBoolean(i3, this.p0);
              break;
            case 74: 
              this.l0 = paramContext.getString(i3);
              break;
            case 73: 
              this.i0 = paramContext.getDimensionPixelSize(i3, this.i0);
              break;
            case 72: 
              this.h0 = paramContext.getInt(i3, this.h0);
              break;
            case 71: 
              Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
              break;
            case 70: 
              this.g0 = paramContext.getFloat(i3, 1.0F);
              break;
            case 69: 
              this.f0 = paramContext.getFloat(i3, 1.0F);
            }
            break;
          case 63: 
            this.D = paramContext.getFloat(i3, this.D);
            break;
          case 62: 
            this.C = paramContext.getDimensionPixelSize(i3, this.C);
            break;
          case 61: 
            this.B = d.a(paramContext, i3, this.B);
          }
          break;
        case 42: 
          d.t(this, paramContext, i3, 1);
          break;
        case 41: 
          d.t(this, paramContext, i3, 0);
          break;
        case 40: 
          this.Y = paramContext.getInt(i3, this.Y);
          break;
        case 39: 
          this.X = paramContext.getInt(i3, this.X);
          break;
        case 38: 
          this.V = paramContext.getFloat(i3, this.V);
          break;
        case 37: 
          this.W = paramContext.getFloat(i3, this.W);
          break;
        case 36: 
          this.z = paramContext.getFloat(i3, this.z);
          break;
        case 35: 
          this.n = d.a(paramContext, i3, this.n);
          break;
        case 34: 
          this.o = d.a(paramContext, i3, this.o);
          break;
        case 33: 
          this.J = paramContext.getDimensionPixelSize(i3, this.J);
          break;
        case 32: 
          this.v = d.a(paramContext, i3, this.v);
          break;
        case 31: 
          this.u = d.a(paramContext, i3, this.u);
          break;
        case 30: 
          this.M = paramContext.getDimensionPixelSize(i3, this.M);
          break;
        case 29: 
          this.m = d.a(paramContext, i3, this.m);
          break;
        case 28: 
          this.l = d.a(paramContext, i3, this.l);
          break;
        case 27: 
          this.I = paramContext.getDimensionPixelSize(i3, this.I);
          break;
        case 26: 
          this.G = paramContext.getInt(i3, this.G);
          break;
        case 25: 
          this.k = d.a(paramContext, i3, this.k);
          break;
        case 24: 
          this.j = d.a(paramContext, i3, this.j);
          break;
        case 23: 
          this.H = paramContext.getDimensionPixelSize(i3, this.H);
          break;
        case 22: 
          this.d = paramContext.getLayoutDimension(i3, this.d);
          break;
        case 21: 
          this.e = paramContext.getLayoutDimension(i3, this.e);
          break;
        case 20: 
          this.y = paramContext.getFloat(i3, this.y);
          break;
        case 19: 
          this.h = paramContext.getFloat(i3, this.h);
          break;
        case 18: 
          this.g = paramContext.getDimensionPixelOffset(i3, this.g);
          break;
        case 17: 
          this.f = paramContext.getDimensionPixelOffset(i3, this.f);
          break;
        case 16: 
          this.P = paramContext.getDimensionPixelSize(i3, this.P);
          break;
        case 15: 
          this.T = paramContext.getDimensionPixelSize(i3, this.T);
          break;
        case 14: 
          this.Q = paramContext.getDimensionPixelSize(i3, this.Q);
          break;
        case 13: 
          this.O = paramContext.getDimensionPixelSize(i3, this.O);
          break;
        case 12: 
          this.S = paramContext.getDimensionPixelSize(i3, this.S);
          break;
        case 11: 
          this.R = paramContext.getDimensionPixelSize(i3, this.R);
          break;
        case 10: 
          this.w = d.a(paramContext, i3, this.w);
          break;
        case 9: 
          this.x = d.a(paramContext, i3, this.x);
          break;
        case 8: 
          this.L = paramContext.getDimensionPixelSize(i3, this.L);
          break;
        case 7: 
          this.F = paramContext.getDimensionPixelOffset(i3, this.F);
          break;
        case 6: 
          this.E = paramContext.getDimensionPixelOffset(i3, this.E);
          break;
        case 5: 
          this.A = paramContext.getString(i3);
          break;
        case 4: 
          this.p = d.a(paramContext, i3, this.p);
          break;
        case 3: 
          this.q = d.a(paramContext, i3, this.q);
          break;
        case 2: 
          this.K = paramContext.getDimensionPixelSize(i3, this.K);
          break;
        case 1: 
          this.r = d.a(paramContext, i3, this.r);
        }
      }
      paramContext.recycle();
    }
  }
  
  public static class c
  {
    private static SparseIntArray o;
    public boolean a = false;
    public int b = -1;
    public int c = 0;
    public String d = null;
    public int e = -1;
    public int f = 0;
    public float g = (0.0F / 0.0F);
    public int h = -1;
    public float i = (0.0F / 0.0F);
    public float j = (0.0F / 0.0F);
    public int k = -1;
    public String l = null;
    public int m = -3;
    public int n = -1;
    
    static
    {
      SparseIntArray localSparseIntArray = new SparseIntArray();
      o = localSparseIntArray;
      localSparseIntArray.append(j.S6, 1);
      o.append(j.U6, 2);
      o.append(j.Y6, 3);
      o.append(j.R6, 4);
      o.append(j.Q6, 5);
      o.append(j.P6, 6);
      o.append(j.T6, 7);
      o.append(j.X6, 8);
      o.append(j.W6, 9);
      o.append(j.V6, 10);
    }
    
    public void a(c paramc)
    {
      this.a = paramc.a;
      this.b = paramc.b;
      this.d = paramc.d;
      this.e = paramc.e;
      this.f = paramc.f;
      this.i = paramc.i;
      this.g = paramc.g;
      this.h = paramc.h;
    }
    
    void b(Context paramContext, AttributeSet paramAttributeSet)
    {
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, j.O6);
      this.a = true;
      int i1 = paramAttributeSet.getIndexCount();
      for (int i2 = 0; i2 < i1; i2++)
      {
        int i3 = paramAttributeSet.getIndex(i2);
        switch (o.get(i3))
        {
        default: 
          break;
        case 10: 
          int i4 = paramAttributeSet.peekValue(i3).type;
          if (i4 == 1)
          {
            i3 = paramAttributeSet.getResourceId(i3, -1);
            this.n = i3;
            if (i3 != -1) {
              this.m = -2;
            }
          }
          else if (i4 == 3)
          {
            paramContext = paramAttributeSet.getString(i3);
            this.l = paramContext;
            if (paramContext.indexOf("/") > 0)
            {
              this.n = paramAttributeSet.getResourceId(i3, -1);
              this.m = -2;
            }
            else
            {
              this.m = -1;
            }
          }
          else
          {
            this.m = paramAttributeSet.getInteger(i3, this.n);
          }
          break;
        case 9: 
          this.j = paramAttributeSet.getFloat(i3, this.j);
          break;
        case 8: 
          this.k = paramAttributeSet.getInteger(i3, this.k);
          break;
        case 7: 
          this.g = paramAttributeSet.getFloat(i3, this.g);
          break;
        case 6: 
          this.c = paramAttributeSet.getInteger(i3, this.c);
          break;
        case 5: 
          this.b = d.a(paramAttributeSet, i3, this.b);
          break;
        case 4: 
          this.f = paramAttributeSet.getInt(i3, 0);
          break;
        case 3: 
          if (paramAttributeSet.peekValue(i3).type == 3) {
            this.d = paramAttributeSet.getString(i3);
          } else {
            this.d = p.b.c[paramAttributeSet.getInteger(i3, 0)];
          }
          break;
        case 2: 
          this.e = paramAttributeSet.getInt(i3, this.e);
          break;
        case 1: 
          this.i = paramAttributeSet.getFloat(i3, this.i);
        }
      }
      paramAttributeSet.recycle();
    }
  }
  
  public static class d
  {
    public boolean a = false;
    public int b = 0;
    public int c = 0;
    public float d = 1.0F;
    public float e = (0.0F / 0.0F);
    
    public void a(d paramd)
    {
      this.a = paramd.a;
      this.b = paramd.b;
      this.d = paramd.d;
      this.e = paramd.e;
      this.c = paramd.c;
    }
    
    void b(Context paramContext, AttributeSet paramAttributeSet)
    {
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, j.l7);
      this.a = true;
      int i = paramContext.getIndexCount();
      for (int j = 0; j < i; j++)
      {
        int k = paramContext.getIndex(j);
        if (k == j.n7)
        {
          this.d = paramContext.getFloat(k, this.d);
        }
        else if (k == j.m7)
        {
          this.b = paramContext.getInt(k, this.b);
          this.b = d.b()[this.b];
        }
        else if (k == j.p7)
        {
          this.c = paramContext.getInt(k, this.c);
        }
        else if (k == j.o7)
        {
          this.e = paramContext.getFloat(k, this.e);
        }
      }
      paramContext.recycle();
    }
  }
  
  public static class e
  {
    private static SparseIntArray o;
    public boolean a = false;
    public float b = 0.0F;
    public float c = 0.0F;
    public float d = 0.0F;
    public float e = 1.0F;
    public float f = 1.0F;
    public float g = (0.0F / 0.0F);
    public float h = (0.0F / 0.0F);
    public int i = -1;
    public float j = 0.0F;
    public float k = 0.0F;
    public float l = 0.0F;
    public boolean m = false;
    public float n = 0.0F;
    
    static
    {
      SparseIntArray localSparseIntArray = new SparseIntArray();
      o = localSparseIntArray;
      localSparseIntArray.append(j.K7, 1);
      o.append(j.L7, 2);
      o.append(j.M7, 3);
      o.append(j.I7, 4);
      o.append(j.J7, 5);
      o.append(j.E7, 6);
      o.append(j.F7, 7);
      o.append(j.G7, 8);
      o.append(j.H7, 9);
      o.append(j.N7, 10);
      o.append(j.O7, 11);
      o.append(j.P7, 12);
    }
    
    public void a(e parame)
    {
      this.a = parame.a;
      this.b = parame.b;
      this.c = parame.c;
      this.d = parame.d;
      this.e = parame.e;
      this.f = parame.f;
      this.g = parame.g;
      this.h = parame.h;
      this.i = parame.i;
      this.j = parame.j;
      this.k = parame.k;
      this.l = parame.l;
      this.m = parame.m;
      this.n = parame.n;
    }
    
    void b(Context paramContext, AttributeSet paramAttributeSet)
    {
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, j.D7);
      this.a = true;
      int i1 = paramContext.getIndexCount();
      for (int i2 = 0; i2 < i1; i2++)
      {
        int i3 = paramContext.getIndex(i2);
        switch (o.get(i3))
        {
        default: 
          break;
        case 12: 
          this.i = d.a(paramContext, i3, this.i);
          break;
        case 11: 
          this.m = true;
          this.n = paramContext.getDimension(i3, this.n);
          break;
        case 10: 
          this.l = paramContext.getDimension(i3, this.l);
          break;
        case 9: 
          this.k = paramContext.getDimension(i3, this.k);
          break;
        case 8: 
          this.j = paramContext.getDimension(i3, this.j);
          break;
        case 7: 
          this.h = paramContext.getDimension(i3, this.h);
          break;
        case 6: 
          this.g = paramContext.getDimension(i3, this.g);
          break;
        case 5: 
          this.f = paramContext.getFloat(i3, this.f);
          break;
        case 4: 
          this.e = paramContext.getFloat(i3, this.e);
          break;
        case 3: 
          this.d = paramContext.getFloat(i3, this.d);
          break;
        case 2: 
          this.c = paramContext.getFloat(i3, this.c);
          break;
        case 1: 
          this.b = paramContext.getFloat(i3, this.b);
        }
      }
      paramContext.recycle();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.constraintlayout.widget.d
 * JD-Core Version:    0.7.0.1
 */