package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import c1.o;
import c1.p;
import c1.q;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h0;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.model.DocumentData.Justification;
import f1.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class g
  extends a
{
  private final StringBuilder D = new StringBuilder(2);
  private final RectF E = new RectF();
  private final Matrix F = new Matrix();
  private final Paint G = new a(1);
  private final Paint H = new b(1);
  private final Map<e1.c, List<b1.d>> I = new HashMap();
  private final n.d<String> J = new n.d();
  private final o K;
  private final LottieDrawable L;
  private final com.airbnb.lottie.h M;
  private c1.a<Integer, Integer> N;
  private c1.a<Integer, Integer> O;
  private c1.a<Integer, Integer> P;
  private c1.a<Integer, Integer> Q;
  private c1.a<Float, Float> R;
  private c1.a<Float, Float> S;
  private c1.a<Float, Float> T;
  private c1.a<Float, Float> U;
  private c1.a<Float, Float> V;
  private c1.a<Typeface, Typeface> W;
  
  g(LottieDrawable paramLottieDrawable, Layer paramLayer)
  {
    super(paramLottieDrawable, paramLayer);
    this.L = paramLottieDrawable;
    this.M = paramLayer.b();
    paramLottieDrawable = paramLayer.s().a();
    this.K = paramLottieDrawable;
    paramLottieDrawable.a(this);
    i(paramLottieDrawable);
    paramLottieDrawable = paramLayer.t();
    if (paramLottieDrawable != null)
    {
      paramLayer = paramLottieDrawable.a;
      if (paramLayer != null)
      {
        paramLayer = paramLayer.m();
        this.N = paramLayer;
        paramLayer.a(this);
        i(this.N);
      }
    }
    if (paramLottieDrawable != null)
    {
      paramLayer = paramLottieDrawable.b;
      if (paramLayer != null)
      {
        paramLayer = paramLayer.m();
        this.P = paramLayer;
        paramLayer.a(this);
        i(this.P);
      }
    }
    if (paramLottieDrawable != null)
    {
      paramLayer = paramLottieDrawable.c;
      if (paramLayer != null)
      {
        paramLayer = paramLayer.m();
        this.R = paramLayer;
        paramLayer.a(this);
        i(this.R);
      }
    }
    if (paramLottieDrawable != null)
    {
      paramLottieDrawable = paramLottieDrawable.d;
      if (paramLottieDrawable != null)
      {
        paramLottieDrawable = paramLottieDrawable.m();
        this.T = paramLottieDrawable;
        paramLottieDrawable.a(this);
        i(this.T);
      }
    }
  }
  
  private void O(DocumentData.Justification paramJustification, Canvas paramCanvas, float paramFloat)
  {
    int i = c.a[paramJustification.ordinal()];
    if (i != 2)
    {
      if (i == 3) {
        paramCanvas.translate(-paramFloat / 2.0F, 0.0F);
      }
    }
    else {
      paramCanvas.translate(-paramFloat, 0.0F);
    }
  }
  
  private String P(String paramString, int paramInt)
  {
    int i = paramString.codePointAt(paramInt);
    int j = Character.charCount(i) + paramInt;
    while (j < paramString.length())
    {
      int k = paramString.codePointAt(j);
      if (!c0(k)) {
        break;
      }
      j += Character.charCount(k);
      i = i * 31 + k;
    }
    n.d locald = this.J;
    long l = i;
    if (locald.d(l)) {
      return (String)this.J.f(l);
    }
    this.D.setLength(0);
    while (paramInt < j)
    {
      i = paramString.codePointAt(paramInt);
      this.D.appendCodePoint(i);
      paramInt += Character.charCount(i);
    }
    paramString = this.D.toString();
    this.J.l(l, paramString);
    return paramString;
  }
  
  private void Q(String paramString, Paint paramPaint, Canvas paramCanvas)
  {
    if (paramPaint.getColor() == 0) {
      return;
    }
    if ((paramPaint.getStyle() == Paint.Style.STROKE) && (paramPaint.getStrokeWidth() == 0.0F)) {
      return;
    }
    paramCanvas.drawText(paramString, 0, paramString.length(), 0.0F, 0.0F, paramPaint);
  }
  
  private void R(e1.c paramc, Matrix paramMatrix, float paramFloat, DocumentData paramDocumentData, Canvas paramCanvas)
  {
    List localList = Y(paramc);
    for (int i = 0; i < localList.size(); i++)
    {
      paramc = ((b1.d)localList.get(i)).getPath();
      paramc.computeBounds(this.E, false);
      this.F.set(paramMatrix);
      this.F.preTranslate(0.0F, -paramDocumentData.g * k1.h.e());
      this.F.preScale(paramFloat, paramFloat);
      paramc.transform(this.F);
      if (paramDocumentData.k)
      {
        U(paramc, this.G, paramCanvas);
        U(paramc, this.H, paramCanvas);
      }
      else
      {
        U(paramc, this.H, paramCanvas);
        U(paramc, this.G, paramCanvas);
      }
    }
  }
  
  private void S(String paramString, DocumentData paramDocumentData, Canvas paramCanvas)
  {
    if (paramDocumentData.k)
    {
      Q(paramString, this.G, paramCanvas);
      Q(paramString, this.H, paramCanvas);
    }
    else
    {
      Q(paramString, this.H, paramCanvas);
      Q(paramString, this.G, paramCanvas);
    }
  }
  
  private void T(String paramString, DocumentData paramDocumentData, Canvas paramCanvas, float paramFloat)
  {
    int i = 0;
    while (i < paramString.length())
    {
      String str = P(paramString, i);
      i += str.length();
      S(str, paramDocumentData, paramCanvas);
      paramCanvas.translate(this.G.measureText(str) + paramFloat, 0.0F);
    }
  }
  
  private void U(Path paramPath, Paint paramPaint, Canvas paramCanvas)
  {
    if (paramPaint.getColor() == 0) {
      return;
    }
    if ((paramPaint.getStyle() == Paint.Style.STROKE) && (paramPaint.getStrokeWidth() == 0.0F)) {
      return;
    }
    paramCanvas.drawPath(paramPath, paramPaint);
  }
  
  private void V(String paramString, DocumentData paramDocumentData, Matrix paramMatrix, e1.b paramb, Canvas paramCanvas, float paramFloat1, float paramFloat2)
  {
    for (int i = 0; i < paramString.length(); i++)
    {
      int j = e1.c.c(paramString.charAt(i), paramb.a(), paramb.c());
      Object localObject = (e1.c)this.M.c().f(j);
      if (localObject != null)
      {
        R((e1.c)localObject, paramMatrix, paramFloat2, paramDocumentData, paramCanvas);
        float f1 = (float)((e1.c)localObject).b();
        float f2 = k1.h.e();
        float f3 = paramDocumentData.e / 10.0F;
        localObject = this.U;
        if (localObject != null) {}
        for (float f4 = ((Float)((c1.a)localObject).h()).floatValue();; f4 = ((Float)((c1.a)localObject).h()).floatValue())
        {
          f4 = f3 + f4;
          break;
          localObject = this.T;
          f4 = f3;
          if (localObject == null) {
            break;
          }
        }
        paramCanvas.translate(f1 * paramFloat2 * f2 * paramFloat1 + f4 * paramFloat1, 0.0F);
      }
    }
  }
  
  private void W(DocumentData paramDocumentData, Matrix paramMatrix, e1.b paramb, Canvas paramCanvas)
  {
    Object localObject = this.V;
    float f1;
    if (localObject != null) {
      f1 = ((Float)((c1.a)localObject).h()).floatValue();
    } else {
      f1 = paramDocumentData.c;
    }
    f1 /= 100.0F;
    float f2 = k1.h.g(paramMatrix);
    localObject = paramDocumentData.a;
    float f3 = paramDocumentData.f * k1.h.e();
    localObject = a0((String)localObject);
    int i = ((List)localObject).size();
    for (int j = 0; j < i; j++)
    {
      String str = (String)((List)localObject).get(j);
      float f4 = Z(str, paramb, f1, f2);
      paramCanvas.save();
      O(paramDocumentData.d, paramCanvas, f4);
      f4 = (i - 1) * f3 / 2.0F;
      paramCanvas.translate(0.0F, j * f3 - f4);
      V(str, paramDocumentData, paramMatrix, paramb, paramCanvas, f2, f1);
      paramCanvas.restore();
    }
  }
  
  private void X(DocumentData paramDocumentData, e1.b paramb, Canvas paramCanvas)
  {
    Object localObject = b0(paramb);
    if (localObject == null) {
      return;
    }
    paramb = paramDocumentData.a;
    this.L.U();
    this.G.setTypeface((Typeface)localObject);
    localObject = this.V;
    if (localObject != null) {
      f1 = ((Float)((c1.a)localObject).h()).floatValue();
    } else {
      f1 = paramDocumentData.c;
    }
    this.G.setTextSize(k1.h.e() * f1);
    this.H.setTypeface(this.G.getTypeface());
    this.H.setTextSize(this.G.getTextSize());
    float f2 = paramDocumentData.f * k1.h.e();
    float f3 = paramDocumentData.e / 10.0F;
    localObject = this.U;
    if (localObject != null) {}
    for (float f4 = ((Float)((c1.a)localObject).h()).floatValue();; f4 = ((Float)((c1.a)localObject).h()).floatValue())
    {
      f4 = f3 + f4;
      break;
      localObject = this.T;
      f4 = f3;
      if (localObject == null) {
        break;
      }
    }
    float f1 = f4 * k1.h.e() * f1 / 100.0F;
    localObject = a0(paramb);
    int i = ((List)localObject).size();
    for (int j = 0; j < i; j++)
    {
      paramb = (String)((List)localObject).get(j);
      f4 = this.H.measureText(paramb);
      f3 = paramb.length() - 1;
      paramCanvas.save();
      O(paramDocumentData.d, paramCanvas, f4 + f3 * f1);
      f4 = (i - 1) * f2 / 2.0F;
      paramCanvas.translate(0.0F, j * f2 - f4);
      T(paramb, paramDocumentData, paramCanvas, f1);
      paramCanvas.restore();
    }
  }
  
  private List<b1.d> Y(e1.c paramc)
  {
    if (this.I.containsKey(paramc)) {
      return (List)this.I.get(paramc);
    }
    List localList = paramc.a();
    int i = localList.size();
    ArrayList localArrayList = new ArrayList(i);
    for (int j = 0; j < i; j++)
    {
      g1.k localk = (g1.k)localList.get(j);
      localArrayList.add(new b1.d(this.L, this, localk));
    }
    this.I.put(paramc, localArrayList);
    return localArrayList;
  }
  
  private float Z(String paramString, e1.b paramb, float paramFloat1, float paramFloat2)
  {
    float f = 0.0F;
    for (int i = 0; i < paramString.length(); i++)
    {
      int j = e1.c.c(paramString.charAt(i), paramb.a(), paramb.c());
      e1.c localc = (e1.c)this.M.c().f(j);
      if (localc != null) {
        f = (float)(f + localc.b() * paramFloat1 * k1.h.e() * paramFloat2);
      }
    }
    return f;
  }
  
  private List<String> a0(String paramString)
  {
    return Arrays.asList(paramString.replaceAll("\r\n", "\r").replaceAll("\n", "\r").split("\r"));
  }
  
  private Typeface b0(e1.b paramb)
  {
    Object localObject = this.W;
    if (localObject != null)
    {
      localObject = (Typeface)((c1.a)localObject).h();
      if (localObject != null) {
        return localObject;
      }
    }
    localObject = this.L.V(paramb.a(), paramb.c());
    if (localObject != null) {
      return localObject;
    }
    return paramb.d();
  }
  
  private boolean c0(int paramInt)
  {
    boolean bool;
    if ((Character.getType(paramInt) != 16) && (Character.getType(paramInt) != 27) && (Character.getType(paramInt) != 6) && (Character.getType(paramInt) != 28) && (Character.getType(paramInt) != 8) && (Character.getType(paramInt) != 19)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void c(RectF paramRectF, Matrix paramMatrix, boolean paramBoolean)
  {
    super.c(paramRectF, paramMatrix, paramBoolean);
    paramRectF.set(0.0F, 0.0F, this.M.b().width(), this.M.b().height());
  }
  
  public <T> void h(T paramT, l1.c<T> paramc)
  {
    super.h(paramT, paramc);
    if (paramT == h0.a)
    {
      paramT = this.O;
      if (paramT != null) {
        G(paramT);
      }
      if (paramc == null)
      {
        this.O = null;
      }
      else
      {
        paramT = new q(paramc);
        this.O = paramT;
        paramT.a(this);
        i(this.O);
      }
    }
    else if (paramT == h0.b)
    {
      paramT = this.Q;
      if (paramT != null) {
        G(paramT);
      }
      if (paramc == null)
      {
        this.Q = null;
      }
      else
      {
        paramT = new q(paramc);
        this.Q = paramT;
        paramT.a(this);
        i(this.Q);
      }
    }
    else if (paramT == h0.s)
    {
      paramT = this.S;
      if (paramT != null) {
        G(paramT);
      }
      if (paramc == null)
      {
        this.S = null;
      }
      else
      {
        paramT = new q(paramc);
        this.S = paramT;
        paramT.a(this);
        i(this.S);
      }
    }
    else if (paramT == h0.t)
    {
      paramT = this.U;
      if (paramT != null) {
        G(paramT);
      }
      if (paramc == null)
      {
        this.U = null;
      }
      else
      {
        paramT = new q(paramc);
        this.U = paramT;
        paramT.a(this);
        i(this.U);
      }
    }
    else if (paramT == h0.F)
    {
      paramT = this.V;
      if (paramT != null) {
        G(paramT);
      }
      if (paramc == null)
      {
        this.V = null;
      }
      else
      {
        paramT = new q(paramc);
        this.V = paramT;
        paramT.a(this);
        i(this.V);
      }
    }
    else if (paramT == h0.M)
    {
      paramT = this.W;
      if (paramT != null) {
        G(paramT);
      }
      if (paramc == null)
      {
        this.W = null;
      }
      else
      {
        paramT = new q(paramc);
        this.W = paramT;
        paramT.a(this);
        i(this.W);
      }
    }
    else if (paramT == h0.O)
    {
      this.K.q(paramc);
    }
  }
  
  void t(Canvas paramCanvas, Matrix paramMatrix, int paramInt)
  {
    paramCanvas.save();
    if (!this.L.U0()) {
      paramCanvas.concat(paramMatrix);
    }
    DocumentData localDocumentData = (DocumentData)this.K.h();
    e1.b localb = (e1.b)this.M.g().get(localDocumentData.b);
    if (localb == null)
    {
      paramCanvas.restore();
      return;
    }
    c1.a locala = this.O;
    if (locala != null)
    {
      this.G.setColor(((Integer)locala.h()).intValue());
    }
    else
    {
      locala = this.N;
      if (locala != null) {
        this.G.setColor(((Integer)locala.h()).intValue());
      } else {
        this.G.setColor(localDocumentData.h);
      }
    }
    locala = this.Q;
    if (locala != null)
    {
      this.H.setColor(((Integer)locala.h()).intValue());
    }
    else
    {
      locala = this.P;
      if (locala != null) {
        this.H.setColor(((Integer)locala.h()).intValue());
      } else {
        this.H.setColor(localDocumentData.i);
      }
    }
    if (this.x.h() == null) {
      paramInt = 100;
    } else {
      paramInt = ((Integer)this.x.h().h()).intValue();
    }
    paramInt = paramInt * 255 / 100;
    this.G.setAlpha(paramInt);
    this.H.setAlpha(paramInt);
    locala = this.S;
    if (locala != null)
    {
      this.H.setStrokeWidth(((Float)locala.h()).floatValue());
    }
    else
    {
      locala = this.R;
      if (locala != null)
      {
        this.H.setStrokeWidth(((Float)locala.h()).floatValue());
      }
      else
      {
        float f = k1.h.g(paramMatrix);
        this.H.setStrokeWidth(localDocumentData.j * k1.h.e() * f);
      }
    }
    if (this.L.U0()) {
      W(localDocumentData, paramMatrix, localb, paramCanvas);
    } else {
      X(localDocumentData, localb, paramCanvas);
    }
    paramCanvas.restore();
  }
  
  class a
    extends Paint
  {
    a(int paramInt)
    {
      super();
      setStyle(Paint.Style.FILL);
    }
  }
  
  class b
    extends Paint
  {
    b(int paramInt)
    {
      super();
      setStyle(Paint.Style.STROKE);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.model.layer.g
 * JD-Core Version:    0.7.0.1
 */