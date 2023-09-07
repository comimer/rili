.class public Lcom/android/calendar/homepage/l0;
.super Landroid/view/View;
.source "EventsView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/homepage/l0$l;,
        Lcom/android/calendar/homepage/l0$p;,
        Lcom/android/calendar/homepage/l0$i;,
        Lcom/android/calendar/homepage/l0$q;,
        Lcom/android/calendar/homepage/l0$m;,
        Lcom/android/calendar/homepage/l0$k;,
        Lcom/android/calendar/homepage/l0$j;,
        Lcom/android/calendar/homepage/l0$o;,
        Lcom/android/calendar/homepage/l0$n;
    }
.end annotation


# static fields
.field private static A3:F = 0.0f

.field private static A4:Z = false

.field private static B3:F = 0.0f

.field protected static B4:I = 0x0

.field private static C3:F = 0.0f

.field private static C4:I = 0x0

.field private static D3:F = 0.0f

.field private static D4:I = 0x0

.field private static E3:F = 0.0f

.field private static E4:Z = false

.field private static F3:F = 0.0f

.field private static F4:I = 0x0

.field private static G3:I = 0x0

.field private static H3:F = 0.0f

.field protected static I3:F = 0.0f

.field protected static J3:F = 0.0f

.field private static K3:I = 0x0

.field private static L3:I = 0x0

.field private static M3:F = 0.0f

.field private static N3:F = 0.0f

.field private static O3:I = 0x0

.field private static P3:I = 0x0

.field private static Q3:I = 0x0

.field private static R3:I = 0x0

.field private static S3:I = 0x0

.field private static T2:Ljava/lang/String; = "Cal:D:DayView"

.field private static T3:I = 0x0

.field private static U2:Z = false

.field private static U3:I = 0x0

.field private static V2:Z = false

.field private static V3:I = 0x0

.field private static W2:F = 0.0f

.field private static W3:I = 0x0

.field private static X2:I = 0x2a

.field private static X3:I = 0x0

.field private static Y2:I = 0x96

.field private static Y3:I = 0x0

.field private static Z2:I = 0x64

.field private static Z3:I

.field private static final a3:[Ljava/lang/String;

.field private static a4:I

.field private static b3:I

.field private static b4:I

.field private static c3:I

.field private static c4:I

.field protected static d3:Ljava/lang/StringBuilder;

.field private static d4:I

.field protected static e3:Ljava/util/Formatter;

.field private static e4:I

.field private static f3:Landroid/graphics/PathEffect;

.field private static f4:I

.field private static g3:I

.field private static g4:I

.field protected static h3:I

.field private static h4:I

.field private static i3:I

.field private static i4:I

.field private static j3:F

.field private static j4:I

.field private static k3:I

.field private static k4:I

.field private static l3:I

.field private static l4:I

.field private static m3:I

.field private static m4:I

.field private static n3:I

.field private static n4:I

.field private static o3:I

.field private static o4:I

.field protected static p3:I

.field protected static p4:I

.field private static q3:I

.field private static q4:I

.field private static r3:I

.field private static r4:I

.field private static s3:I

.field private static s4:Landroid/graphics/drawable/Drawable;

.field private static t3:I

.field private static t4:I

.field private static u3:I

.field private static u4:Landroid/graphics/drawable/Drawable;

.field private static v3:I

.field protected static v4:I

.field private static w3:I

.field private static w4:I

.field private static x3:I

.field protected static x4:I

.field private static y3:I

.field protected static y4:I

.field private static z3:I

.field private static z4:I


# instance fields
.field private final A0:Landroid/graphics/Rect;

.field private final A1:Landroid/graphics/Rect;

.field protected A2:I

.field protected final B0:Landroid/graphics/Rect;

.field protected final B1:Landroid/content/res/Resources;

.field protected B2:I

.field private final C0:Landroid/graphics/Rect;

.field protected final C1:Landroid/graphics/drawable/Drawable;

.field protected C2:I

.field private D:I

.field protected final D0:Landroid/graphics/Paint;

.field protected final D1:Landroid/graphics/drawable/Drawable;

.field protected D2:I

.field private E:J

.field protected final E0:Landroid/graphics/Paint;

.field protected final E1:Landroid/graphics/drawable/Drawable;

.field protected E2:I

.field protected F:I

.field private final F0:Landroid/graphics/Paint;

.field protected final F1:Landroid/graphics/drawable/Drawable;

.field protected F2:I

.field protected G:I

.field private G0:[F

.field protected G1:Landroid/graphics/drawable/Drawable;

.field protected G2:I

.field private H:Landroid/animation/ObjectAnimator;

.field private H0:I

.field protected H1:Ljava/lang/String;

.field protected H2:I

.field private final I:Ljava/lang/Runnable;

.field private I0:Landroid/widget/PopupWindow;

.field protected I1:Ljava/lang/String;

.field protected I2:I

.field private final J:Ljava/lang/Runnable;

.field private J0:Landroid/view/View;

.field private final J1:Lcom/android/calendar/event/b;

.field protected J2:I

.field K:Landroid/animation/AnimatorListenerAdapter;

.field private final K0:Lcom/android/calendar/homepage/l0$m;

.field private final K1:Lcom/android/calendar/homepage/l0$j;

.field protected K2:I

.field private L:J

.field protected L0:Z

.field L1:Landroid/view/ScaleGestureDetector;

.field protected L2:I

.field private M:Lcom/android/calendar/event/j;

.field protected final M0:Lcom/android/calendar/homepage/j0;

.field private M1:I

.field protected M2:I

.field private N:Lcom/android/calendar/common/event/schema/Event;

.field private N0:I

.field protected N1:I

.field protected N2:I

.field private O:Lcom/android/calendar/common/event/schema/Event;

.field private O0:I

.field public O1:I

.field private final O2:Ljava/util/regex/Pattern;

.field private P:Lmiuix/appcompat/app/l;

.field private P0:I

.field private P1:Z

.field P2:Landroid/os/Handler;

.field private Q:I

.field private Q0:I

.field protected Q1:Z

.field private Q2:Z

.field protected R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/homepage/l0$l;",
            ">;"
        }
    .end annotation
.end field

.field private R0:F

.field private R1:Z

.field R2:Ljava/lang/Runnable;

.field private S:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private S0:I

.field private S1:F

.field private S2:Landroid/view/VelocityTracker;

.field private T:J

.field protected T0:I

.field private T1:F

.field private U:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/homepage/l0$l;",
            ">;"
        }
    .end annotation
.end field

.field private U0:I

.field U1:Landroid/animation/ObjectAnimator;

.field private V:[Landroid/text/StaticLayout;

.field protected V0:I

.field V1:Landroid/animation/ObjectAnimator;

.field private W:[Landroid/text/StaticLayout;

.field protected W0:I

.field W1:Landroid/animation/ObjectAnimator;

.field private X0:I

.field private X1:Z

.field protected Y0:I

.field private Y1:Z

.field private Z0:I

.field protected final Z1:Landroid/widget/ViewSwitcher;

.field private a:Z

.field protected a0:I

.field private a1:I

.field private final a2:Landroid/view/GestureDetector;

.field private b:Z

.field protected b0:I

.field private b1:F

.field private final b2:Landroid/widget/OverScroller;

.field protected c:Z

.field private c0:I

.field private c1:I

.field private final c2:Landroid/widget/EdgeEffect;

.field private d:Landroid/os/Handler;

.field protected d0:I

.field private d1:F

.field private final d2:Landroid/widget/EdgeEffect;

.field private e:J

.field protected e0:I

.field private e1:Z

.field private e2:Z

.field protected f:Landroid/content/Context;

.field protected f0:I

.field protected f1:I

.field private final f2:I

.field private final g:Lcom/android/calendar/homepage/l0$k;

.field protected g0:I

.field private g1:I

.field private g2:F

.field private final h:Lcom/android/calendar/homepage/l0$o;

.field private h0:I

.field protected h1:I

.field private final h2:Lcom/android/calendar/homepage/l0$p;

.field i:Lcom/miui/calendar/util/r0;

.field private i0:I

.field private i1:I

.field private i2:Landroid/view/accessibility/AccessibilityManager;

.field protected j:Lcom/miui/calendar/util/r0;

.field private j0:I

.field private j1:I

.field private j2:Z

.field private final k:Lcom/android/calendar/homepage/l0$q;

.field private k0:I

.field private k1:I

.field private k2:Z

.field protected l:I

.field private l0:I

.field private l1:I

.field private final l2:Ljava/lang/String;

.field protected m:I

.field private m0:I

.field protected m1:I

.field private final m2:Ljava/lang/String;

.field private final n:Landroid/graphics/Typeface;

.field private n0:I

.field private n1:I

.field private n2:Lcom/miui/calendar/util/c1;

.field protected o:I

.field private o0:I

.field private o1:I

.field private o2:Z

.field private p:I

.field private p0:F

.field protected p1:I

.field private p2:Lcom/miui/calendar/util/c1;

.field private q:I

.field private q0:F

.field private q1:I

.field private q2:Z

.field private r:[I

.field r0:Z

.field protected r1:[Ljava/lang/String;

.field private r2:Z

.field private s0:I

.field private s1:[Ljava/lang/String;

.field protected s2:I

.field private t0:I

.field private t1:[Ljava/lang/String;

.field protected t2:I

.field private u0:Lcom/android/calendar/homepage/l0$l;

.field protected u1:Z

.field protected u2:I

.field private v:[Z

.field private v0:I

.field protected final v1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/homepage/l0$l;",
            ">;"
        }
    .end annotation
.end field

.field protected v2:I

.field private w:Ljava/lang/String;

.field private w0:I

.field private w1:Z

.field protected w2:I

.field private x:Lcom/android/calendar/homepage/l0$l;

.field private x0:Lcom/android/calendar/homepage/l0$l;

.field private x1:Z

.field protected x2:Z

.field private y:Lcom/android/calendar/homepage/l0$l;

.field private y0:I

.field private y1:Lcom/android/calendar/homepage/l0$l;

.field protected y2:I

.field private z:Lcom/android/calendar/homepage/l0$l;

.field protected final z0:Landroid/graphics/Rect;

.field private z1:Lcom/android/calendar/homepage/l0$l;

.field protected z2:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "_id"

    .line 2
    .line 3
    const-string v1, "calendar_access_level"

    .line 4
    .line 5
    const-string v2, "ownerAccount"

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/calendar/homepage/l0;->a3:[Ljava/lang/String;

    .line 12
    .line 13
    const/16 v0, 0x80

    .line 14
    .line 15
    sput v0, Lcom/android/calendar/homepage/l0;->b3:I

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const/16 v1, 0x32

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/android/calendar/homepage/l0;->d3:Ljava/lang/StringBuilder;

    .line 25
    .line 26
    new-instance v0, Ljava/util/Formatter;

    .line 27
    .line 28
    sget-object v1, Lcom/android/calendar/homepage/l0;->d3:Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/android/calendar/homepage/l0;->e3:Ljava/util/Formatter;

    .line 38
    .line 39
    new-instance v0, Landroid/graphics/DashPathEffect;

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    new-array v2, v1, [F

    .line 43
    .line 44
    fill-array-data v2, :array_0

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-direct {v0, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/android/calendar/homepage/l0;->f3:Landroid/graphics/PathEffect;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    sput v0, Lcom/android/calendar/homepage/l0;->h3:I

    .line 55
    .line 56
    const/16 v2, 0x22

    .line 57
    .line 58
    sput v2, Lcom/android/calendar/homepage/l0;->i3:I

    .line 59
    .line 60
    const/high16 v3, 0x41e00000    # 28.0f

    .line 61
    .line 62
    sput v3, Lcom/android/calendar/homepage/l0;->j3:F

    .line 63
    .line 64
    const/high16 v4, 0x40800000    # 4.0f

    .line 65
    .line 66
    mul-float/2addr v3, v4

    .line 67
    float-to-int v3, v3

    .line 68
    sput v3, Lcom/android/calendar/homepage/l0;->k3:I

    .line 69
    .line 70
    const/16 v3, 0xb4

    .line 71
    .line 72
    sput v3, Lcom/android/calendar/homepage/l0;->l3:I

    .line 73
    .line 74
    sput v0, Lcom/android/calendar/homepage/l0;->m3:I

    .line 75
    .line 76
    sput v0, Lcom/android/calendar/homepage/l0;->n3:I

    .line 77
    .line 78
    sput v2, Lcom/android/calendar/homepage/l0;->o3:I

    .line 79
    .line 80
    const/4 v2, 0x3

    .line 81
    sput v2, Lcom/android/calendar/homepage/l0;->p3:I

    .line 82
    .line 83
    sput v1, Lcom/android/calendar/homepage/l0;->q3:I

    .line 84
    .line 85
    const/4 v3, 0x4

    .line 86
    sput v3, Lcom/android/calendar/homepage/l0;->r3:I

    .line 87
    .line 88
    const/4 v4, 0x2

    .line 89
    add-int/2addr v4, v3

    .line 90
    sput v4, Lcom/android/calendar/homepage/l0;->s3:I

    .line 91
    .line 92
    sput v3, Lcom/android/calendar/homepage/l0;->t3:I

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    sput v4, Lcom/android/calendar/homepage/l0;->u3:I

    .line 96
    .line 97
    const/4 v5, 0x5

    .line 98
    sput v5, Lcom/android/calendar/homepage/l0;->v3:I

    .line 99
    .line 100
    const/4 v5, 0x6

    .line 101
    sput v5, Lcom/android/calendar/homepage/l0;->w3:I

    .line 102
    .line 103
    sput v2, Lcom/android/calendar/homepage/l0;->x3:I

    .line 104
    .line 105
    const/16 v2, 0x16

    .line 106
    .line 107
    sput v2, Lcom/android/calendar/homepage/l0;->y3:I

    .line 108
    .line 109
    const/16 v2, 0x1c

    .line 110
    .line 111
    sput v2, Lcom/android/calendar/homepage/l0;->z3:I

    .line 112
    .line 113
    const/high16 v2, 0x41600000    # 14.0f

    .line 114
    .line 115
    sput v2, Lcom/android/calendar/homepage/l0;->A3:F

    .line 116
    .line 117
    const/high16 v2, 0x41b00000    # 22.0f

    .line 118
    .line 119
    sput v2, Lcom/android/calendar/homepage/l0;->B3:F

    .line 120
    .line 121
    const/high16 v2, 0x41200000    # 10.0f

    .line 122
    .line 123
    sput v2, Lcom/android/calendar/homepage/l0;->C3:F

    .line 124
    .line 125
    const/high16 v2, 0x42000000    # 32.0f

    .line 126
    .line 127
    sput v2, Lcom/android/calendar/homepage/l0;->D3:F

    .line 128
    .line 129
    const/high16 v2, 0x41400000    # 12.0f

    .line 130
    .line 131
    sput v2, Lcom/android/calendar/homepage/l0;->E3:F

    .line 132
    .line 133
    sput v2, Lcom/android/calendar/homepage/l0;->F3:F

    .line 134
    .line 135
    const/16 v5, 0x8

    .line 136
    .line 137
    sput v5, Lcom/android/calendar/homepage/l0;->G3:I

    .line 138
    .line 139
    sput v2, Lcom/android/calendar/homepage/l0;->H3:F

    .line 140
    .line 141
    const/high16 v2, 0x42100000    # 36.0f

    .line 142
    .line 143
    sput v2, Lcom/android/calendar/homepage/l0;->I3:F

    .line 144
    .line 145
    const/high16 v2, 0x41100000    # 9.0f

    .line 146
    .line 147
    sput v2, Lcom/android/calendar/homepage/l0;->J3:F

    .line 148
    .line 149
    const/16 v2, 0x60

    .line 150
    .line 151
    sput v2, Lcom/android/calendar/homepage/l0;->K3:I

    .line 152
    .line 153
    sput v5, Lcom/android/calendar/homepage/l0;->L3:I

    .line 154
    .line 155
    const/high16 v2, 0x41c00000    # 24.0f

    .line 156
    .line 157
    sput v2, Lcom/android/calendar/homepage/l0;->M3:F

    .line 158
    .line 159
    const/high16 v6, 0x40000000    # 2.0f

    .line 160
    .line 161
    div-float/2addr v2, v6

    .line 162
    sput v2, Lcom/android/calendar/homepage/l0;->N3:F

    .line 163
    .line 164
    sput v4, Lcom/android/calendar/homepage/l0;->O3:I

    .line 165
    .line 166
    sput v4, Lcom/android/calendar/homepage/l0;->P3:I

    .line 167
    .line 168
    sput v0, Lcom/android/calendar/homepage/l0;->Q3:I

    .line 169
    .line 170
    sput v4, Lcom/android/calendar/homepage/l0;->R3:I

    .line 171
    .line 172
    sput v1, Lcom/android/calendar/homepage/l0;->S3:I

    .line 173
    .line 174
    const/16 v2, 0xa

    .line 175
    .line 176
    sput v2, Lcom/android/calendar/homepage/l0;->T3:I

    .line 177
    .line 178
    sput v5, Lcom/android/calendar/homepage/l0;->U3:I

    .line 179
    .line 180
    const/16 v5, 0xe6

    .line 181
    .line 182
    sput v5, Lcom/android/calendar/homepage/l0;->V3:I

    .line 183
    .line 184
    const/16 v5, 0xc8

    .line 185
    .line 186
    sput v5, Lcom/android/calendar/homepage/l0;->W3:I

    .line 187
    .line 188
    sput v1, Lcom/android/calendar/homepage/l0;->X3:I

    .line 189
    .line 190
    sput v1, Lcom/android/calendar/homepage/l0;->Y3:I

    .line 191
    .line 192
    sput v0, Lcom/android/calendar/homepage/l0;->Z3:I

    .line 193
    .line 194
    sput v1, Lcom/android/calendar/homepage/l0;->a4:I

    .line 195
    .line 196
    sput v1, Lcom/android/calendar/homepage/l0;->b4:I

    .line 197
    .line 198
    sput v2, Lcom/android/calendar/homepage/l0;->c4:I

    .line 199
    .line 200
    sput v2, Lcom/android/calendar/homepage/l0;->d4:I

    .line 201
    .line 202
    sput v3, Lcom/android/calendar/homepage/l0;->e4:I

    .line 203
    .line 204
    const/16 v1, 0xc

    .line 205
    .line 206
    sput v1, Lcom/android/calendar/homepage/l0;->f4:I

    .line 207
    .line 208
    const/16 v1, 0x4c

    .line 209
    .line 210
    sput v1, Lcom/android/calendar/homepage/l0;->w4:I

    .line 211
    .line 212
    sput v4, Lcom/android/calendar/homepage/l0;->x4:I

    .line 213
    .line 214
    const/16 v1, 0x20

    .line 215
    .line 216
    sput v1, Lcom/android/calendar/homepage/l0;->z4:I

    .line 217
    .line 218
    sput-boolean v0, Lcom/android/calendar/homepage/l0;->A4:Z

    .line 219
    .line 220
    const/16 v0, 0x2d

    .line 221
    .line 222
    sput v0, Lcom/android/calendar/homepage/l0;->B4:I

    .line 223
    .line 224
    sput v4, Lcom/android/calendar/homepage/l0;->C4:I

    .line 225
    .line 226
    sput v0, Lcom/android/calendar/homepage/l0;->D4:I

    .line 227
    .line 228
    sput-boolean v4, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 229
    .line 230
    sput v4, Lcom/android/calendar/homepage/l0;->F4:I

    .line 231
    .line 232
    return-void

    :array_0
    .array-data 4
        0x41900000    # 18.0f
        0x41400000    # 12.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ViewSwitcher;I)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->b:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/android/calendar/homepage/l0;->c:Z

    .line 4
    new-instance v2, Lcom/android/calendar/homepage/l0$k;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/calendar/homepage/l0$k;-><init>(Lcom/android/calendar/homepage/l0;Lcom/android/calendar/homepage/l0$a;)V

    iput-object v2, p0, Lcom/android/calendar/homepage/l0;->g:Lcom/android/calendar/homepage/l0$k;

    .line 5
    new-instance v2, Lcom/android/calendar/homepage/l0$o;

    invoke-direct {v2, p0, v3}, Lcom/android/calendar/homepage/l0$o;-><init>(Lcom/android/calendar/homepage/l0;Lcom/android/calendar/homepage/l0$a;)V

    iput-object v2, p0, Lcom/android/calendar/homepage/l0;->h:Lcom/android/calendar/homepage/l0$o;

    .line 6
    new-instance v2, Lcom/android/calendar/homepage/l0$q;

    invoke-direct {v2, p0}, Lcom/android/calendar/homepage/l0$q;-><init>(Lcom/android/calendar/homepage/l0;)V

    iput-object v2, p0, Lcom/android/calendar/homepage/l0;->k:Lcom/android/calendar/homepage/l0$q;

    .line 7
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/android/calendar/homepage/l0;->n:Landroid/graphics/Typeface;

    const/4 v2, -0x1

    .line 8
    iput v2, p0, Lcom/android/calendar/homepage/l0;->p:I

    const/16 v4, 0x7f

    .line 9
    iput v4, p0, Lcom/android/calendar/homepage/l0;->F:I

    const/16 v4, 0xff

    .line 10
    iput v4, p0, Lcom/android/calendar/homepage/l0;->G:I

    .line 11
    new-instance v4, Lcom/android/calendar/homepage/l0$a;

    invoke-direct {v4, p0}, Lcom/android/calendar/homepage/l0$a;-><init>(Lcom/android/calendar/homepage/l0;)V

    iput-object v4, p0, Lcom/android/calendar/homepage/l0;->I:Ljava/lang/Runnable;

    .line 12
    new-instance v4, Lcom/android/calendar/homepage/l0$b;

    invoke-direct {v4, p0}, Lcom/android/calendar/homepage/l0$b;-><init>(Lcom/android/calendar/homepage/l0;)V

    iput-object v4, p0, Lcom/android/calendar/homepage/l0;->J:Ljava/lang/Runnable;

    .line 13
    new-instance v4, Lcom/android/calendar/homepage/l0$c;

    invoke-direct {v4, p0}, Lcom/android/calendar/homepage/l0$c;-><init>(Lcom/android/calendar/homepage/l0;)V

    iput-object v4, p0, Lcom/android/calendar/homepage/l0;->K:Landroid/animation/AnimatorListenerAdapter;

    .line 14
    iput v0, p0, Lcom/android/calendar/homepage/l0;->Q:I

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 16
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/calendar/homepage/l0;->S:Ljava/util/HashSet;

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/calendar/homepage/l0;->U:Ljava/util/ArrayList;

    .line 18
    iput-object v3, p0, Lcom/android/calendar/homepage/l0;->V:[Landroid/text/StaticLayout;

    .line 19
    iput-object v3, p0, Lcom/android/calendar/homepage/l0;->W:[Landroid/text/StaticLayout;

    const/4 v4, 0x0

    .line 20
    iput v4, p0, Lcom/android/calendar/homepage/l0;->p0:F

    .line 21
    iput v4, p0, Lcom/android/calendar/homepage/l0;->q0:F

    .line 22
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/calendar/homepage/l0;->z0:Landroid/graphics/Rect;

    .line 23
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/calendar/homepage/l0;->A0:Landroid/graphics/Rect;

    .line 24
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/calendar/homepage/l0;->B0:Landroid/graphics/Rect;

    .line 25
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/calendar/homepage/l0;->C0:Landroid/graphics/Rect;

    .line 26
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/calendar/homepage/l0;->D0:Landroid/graphics/Paint;

    .line 27
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/calendar/homepage/l0;->E0:Landroid/graphics/Paint;

    .line 28
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/calendar/homepage/l0;->F0:Landroid/graphics/Paint;

    .line 29
    new-instance v5, Lcom/android/calendar/homepage/l0$m;

    invoke-direct {v5, p0}, Lcom/android/calendar/homepage/l0$m;-><init>(Lcom/android/calendar/homepage/l0;)V

    iput-object v5, p0, Lcom/android/calendar/homepage/l0;->K0:Lcom/android/calendar/homepage/l0$m;

    .line 30
    iput-boolean v1, p0, Lcom/android/calendar/homepage/l0;->L0:Z

    const/4 v5, 0x6

    .line 31
    iput v5, p0, Lcom/android/calendar/homepage/l0;->N0:I

    .line 32
    iput v5, p0, Lcom/android/calendar/homepage/l0;->O0:I

    .line 33
    iput v5, p0, Lcom/android/calendar/homepage/l0;->P0:I

    .line 34
    iput v5, p0, Lcom/android/calendar/homepage/l0;->Q0:I

    .line 35
    iput v4, p0, Lcom/android/calendar/homepage/l0;->R0:F

    .line 36
    iput v2, p0, Lcom/android/calendar/homepage/l0;->X0:I

    .line 37
    iput v4, p0, Lcom/android/calendar/homepage/l0;->b1:F

    .line 38
    iput v4, p0, Lcom/android/calendar/homepage/l0;->d1:F

    .line 39
    iput-boolean v1, p0, Lcom/android/calendar/homepage/l0;->e1:Z

    .line 40
    iput v0, p0, Lcom/android/calendar/homepage/l0;->i1:I

    .line 41
    sget v1, Lcom/android/calendar/homepage/l0;->j3:F

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/homepage/l0;->j1:I

    const/4 v1, 0x4

    .line 42
    iput v1, p0, Lcom/android/calendar/homepage/l0;->l1:I

    const/4 v1, 0x7

    .line 43
    iput v1, p0, Lcom/android/calendar/homepage/l0;->m1:I

    const/16 v1, 0xa

    .line 44
    iput v1, p0, Lcom/android/calendar/homepage/l0;->n1:I

    .line 45
    iput v2, p0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 47
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->A1:Landroid/graphics/Rect;

    .line 48
    new-instance v1, Lcom/android/calendar/homepage/l0$j;

    invoke-direct {v1, p0, v3}, Lcom/android/calendar/homepage/l0$j;-><init>(Lcom/android/calendar/homepage/l0;Lcom/android/calendar/homepage/l0$a;)V

    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->K1:Lcom/android/calendar/homepage/l0$j;

    .line 49
    iput v0, p0, Lcom/android/calendar/homepage/l0;->M1:I

    .line 50
    iput v0, p0, Lcom/android/calendar/homepage/l0;->N1:I

    .line 51
    iput v0, p0, Lcom/android/calendar/homepage/l0;->O1:I

    .line 52
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->P1:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->X1:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->Y1:Z

    .line 57
    iput-object v3, p0, Lcom/android/calendar/homepage/l0;->i2:Landroid/view/accessibility/AccessibilityManager;

    .line 58
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->j2:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->k2:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->o2:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->q2:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->r2:Z

    .line 63
    iput v0, p0, Lcom/android/calendar/homepage/l0;->v2:I

    .line 64
    iput v0, p0, Lcom/android/calendar/homepage/l0;->J2:I

    .line 65
    iput v0, p0, Lcom/android/calendar/homepage/l0;->M2:I

    const-string v1, "[\t\n],"

    .line 66
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->O2:Ljava/util/regex/Pattern;

    .line 67
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->P2:Landroid/os/Handler;

    .line 68
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->Q2:Z

    .line 69
    new-instance v1, Lcom/android/calendar/homepage/l0$f;

    invoke-direct {v1, p0}, Lcom/android/calendar/homepage/l0$f;-><init>(Lcom/android/calendar/homepage/l0;)V

    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->R2:Ljava/lang/Runnable;

    .line 70
    iput-object v3, p0, Lcom/android/calendar/homepage/l0;->S2:Landroid/view/VelocityTracker;

    .line 71
    iput-object p1, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 72
    new-instance v1, Lcom/miui/calendar/util/c1;

    invoke-direct {v1, p0}, Lcom/miui/calendar/util/c1;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->n2:Lcom/miui/calendar/util/c1;

    .line 73
    new-instance v1, Lcom/miui/calendar/util/c1;

    invoke-direct {v1, p0}, Lcom/miui/calendar/util/c1;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->p2:Lcom/miui/calendar/util/c1;

    .line 74
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->v1()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->B1:Landroid/content/res/Resources;

    const v2, 0x7f1201c8

    .line 76
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/homepage/l0;->l2:Ljava/lang/String;

    const v2, 0x7f120159

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/homepage/l0;->m2:Ljava/lang/String;

    .line 78
    iput p3, p0, Lcom/android/calendar/homepage/l0;->m1:I

    const p3, 0x7f070251

    .line 79
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    int-to-float p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->D3:F

    const p3, 0x7f07026a

    .line 80
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    int-to-float p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->A3:F

    const p3, 0x7f070888

    .line 81
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    int-to-float p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->B3:F

    const p3, 0x7f0706a3

    .line 82
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    int-to-float p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->C3:F

    const p3, 0x7f070790

    .line 83
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->D4:I

    const p3, 0x7f070267

    .line 84
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->x3:I

    const p3, 0x7f070269

    .line 85
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->y3:I

    const p3, 0x7f070268

    .line 86
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->z3:I

    const p3, 0x7f070129

    .line 87
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->c4:I

    const p3, 0x7f070404

    .line 88
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    int-to-float p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->H3:F

    const p3, 0x7f070131

    .line 89
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    int-to-float p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->J3:F

    .line 90
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->G1()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f070460

    goto :goto_0

    :cond_0
    const p3, 0x7f07045f

    :goto_0
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->K3:I

    const p3, 0x7f070402

    .line 91
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->q3:I

    const p3, 0x7f070403

    .line 92
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->r3:I

    const p3, 0x7f07026b

    .line 93
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    int-to-float p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->F3:F

    const p3, 0x7f070764

    .line 94
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->f4:I

    const p3, 0x7f07020e

    .line 95
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    sput p3, Lcom/android/calendar/homepage/l0;->M3:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    .line 96
    sput p3, Lcom/android/calendar/homepage/l0;->N3:F

    .line 97
    sget p3, Lcom/android/calendar/homepage/l0;->i3:I

    int-to-float p3, p3

    sput p3, Lcom/android/calendar/homepage/l0;->j3:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr p3, v5

    float-to-int p3, p3

    .line 98
    sput p3, Lcom/android/calendar/homepage/l0;->k3:I

    .line 99
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->getEventTextTopMargin()I

    move-result p3

    sput p3, Lcom/android/calendar/homepage/l0;->X3:I

    .line 100
    sput p3, Lcom/android/calendar/homepage/l0;->Y3:I

    .line 101
    sput p3, Lcom/android/calendar/homepage/l0;->a4:I

    .line 102
    sput p3, Lcom/android/calendar/homepage/l0;->b4:I

    .line 103
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->getEventTextLeftMargin()I

    move-result p3

    iput p3, p0, Lcom/android/calendar/homepage/l0;->N0:I

    .line 104
    iput p3, p0, Lcom/android/calendar/homepage/l0;->O0:I

    .line 105
    iput p3, p0, Lcom/android/calendar/homepage/l0;->P0:I

    .line 106
    iput p3, p0, Lcom/android/calendar/homepage/l0;->Q0:I

    .line 107
    invoke-static {p1, v2}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/android/calendar/homepage/l0;->H2:I

    const/high16 p3, 0x41800000    # 16.0f

    .line 108
    invoke-static {p1, p3}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/android/calendar/homepage/l0;->B2:I

    const/high16 p3, 0x41600000    # 14.0f

    .line 109
    invoke-static {p1, p3}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/android/calendar/homepage/l0;->C2:I

    const/high16 p3, 0x41200000    # 10.0f

    .line 110
    invoke-static {p1, p3}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/android/calendar/homepage/l0;->F2:I

    .line 111
    iput p3, p0, Lcom/android/calendar/homepage/l0;->E2:I

    const p3, 0x7f07025c

    .line 112
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/calendar/homepage/l0;->G2:I

    .line 113
    invoke-static {p1, v5}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/android/calendar/homepage/l0;->y2:I

    const p3, 0x7f06050f

    .line 114
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/calendar/homepage/l0;->z2:I

    const p3, 0x7f060141

    .line 115
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/calendar/homepage/l0;->A2:I

    .line 116
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->getTimeLineHourWidth()I

    move-result p3

    iput p3, p0, Lcom/android/calendar/homepage/l0;->I2:I

    .line 117
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->getEventsEndMargin()I

    move-result p3

    iput p3, p0, Lcom/android/calendar/homepage/l0;->D2:I

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v5, 0x7f0600d7

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/calendar/homepage/l0;->K2:I

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v5, 0x7f0600d8

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/calendar/homepage/l0;->L2:I

    .line 120
    sget p3, Lcom/android/calendar/homepage/l0;->W2:F

    cmpl-float p3, p3, v4

    if-nez p3, :cond_1

    .line 121
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    sput p3, Lcom/android/calendar/homepage/l0;->W2:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p3, v4

    if-eqz v4, :cond_1

    .line 122
    sget v4, Lcom/android/calendar/homepage/l0;->i3:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->i3:I

    .line 123
    sget v4, Lcom/android/calendar/homepage/l0;->o3:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->o3:I

    .line 124
    sget v4, Lcom/android/calendar/homepage/l0;->E3:F

    mul-float/2addr v4, p3

    sput v4, Lcom/android/calendar/homepage/l0;->E3:F

    .line 125
    sget v4, Lcom/android/calendar/homepage/l0;->p3:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->p3:I

    .line 126
    sget v4, Lcom/android/calendar/homepage/l0;->t3:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->t3:I

    .line 127
    sget v4, Lcom/android/calendar/homepage/l0;->L3:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->L3:I

    .line 128
    sget v4, Lcom/android/calendar/homepage/l0;->j3:F

    mul-float/2addr v4, p3

    sput v4, Lcom/android/calendar/homepage/l0;->j3:F

    .line 129
    sget v5, Lcom/android/calendar/homepage/l0;->k3:I

    int-to-float v5, v5

    mul-float/2addr v5, p3

    float-to-int v5, v5

    sput v5, Lcom/android/calendar/homepage/l0;->k3:I

    float-to-int v4, v4

    .line 130
    iput v4, p0, Lcom/android/calendar/homepage/l0;->j1:I

    .line 131
    sget v4, Lcom/android/calendar/homepage/l0;->Z2:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->Z2:I

    .line 132
    sget v4, Lcom/android/calendar/homepage/l0;->Y2:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->Y2:I

    .line 133
    sget v4, Lcom/android/calendar/homepage/l0;->X2:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->X2:I

    .line 134
    sget v4, Lcom/android/calendar/homepage/l0;->B4:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->B4:I

    .line 135
    sget v4, Lcom/android/calendar/homepage/l0;->u3:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->u3:I

    .line 136
    sget v4, Lcom/android/calendar/homepage/l0;->v3:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->v3:I

    .line 137
    sget v4, Lcom/android/calendar/homepage/l0;->w3:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->w3:I

    .line 138
    sget v4, Lcom/android/calendar/homepage/l0;->Z3:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->Z3:I

    .line 139
    sget v4, Lcom/android/calendar/homepage/l0;->S3:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->S3:I

    .line 140
    sget v4, Lcom/android/calendar/homepage/l0;->d4:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->d4:I

    .line 141
    sget v4, Lcom/android/calendar/homepage/l0;->e4:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    sput v4, Lcom/android/calendar/homepage/l0;->e4:I

    .line 142
    sget v4, Lcom/android/calendar/homepage/l0;->G3:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int p3, v4

    sput p3, Lcom/android/calendar/homepage/l0;->G3:I

    :cond_1
    const p3, 0x7f0708d5

    .line 143
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sput p3, Lcom/android/calendar/homepage/l0;->g3:I

    .line 144
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->G1()Z

    move-result p3

    if-nez p3, :cond_2

    sget p3, Lcom/android/calendar/homepage/l0;->D4:I

    goto :goto_1

    :cond_2
    sget p3, Lcom/android/calendar/homepage/l0;->C4:I

    :goto_1
    sput p3, Lcom/android/calendar/homepage/l0;->B4:I

    const p3, 0x7f0806d6

    .line 145
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/calendar/homepage/l0;->C1:Landroid/graphics/drawable/Drawable;

    const p3, 0x7f0806d7

    .line 146
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/calendar/homepage/l0;->D1:Landroid/graphics/drawable/Drawable;

    const p3, 0x7f080244

    .line 147
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/calendar/homepage/l0;->E1:Landroid/graphics/drawable/Drawable;

    const p3, 0x7f080221

    .line 148
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/calendar/homepage/l0;->F1:Landroid/graphics/drawable/Drawable;

    const p3, 0x7f060451

    .line 149
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    sput p3, Lcom/android/calendar/homepage/l0;->t4:I

    const p3, 0x7f0802df

    .line 150
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sput-object p3, Lcom/android/calendar/homepage/l0;->u4:Landroid/graphics/drawable/Drawable;

    const p3, 0x7f080660

    .line 151
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/calendar/homepage/l0;->G1:Landroid/graphics/drawable/Drawable;

    .line 152
    new-instance p3, Lcom/android/calendar/homepage/j0;

    invoke-direct {p3}, Lcom/android/calendar/homepage/j0;-><init>()V

    iput-object p3, p0, Lcom/android/calendar/homepage/l0;->M0:Lcom/android/calendar/homepage/j0;

    .line 153
    sget v1, Lcom/android/calendar/homepage/l0;->N3:F

    invoke-virtual {p3, v1}, Lcom/android/calendar/homepage/j0;->g(F)V

    .line 154
    iget v1, p0, Lcom/android/calendar/homepage/l0;->F2:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p3, v1}, Lcom/android/calendar/homepage/j0;->e(F)V

    .line 155
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->G1()Z

    move-result v1

    invoke-virtual {p3, v1}, Lcom/android/calendar/homepage/j0;->h(Z)V

    .line 156
    iget v1, p0, Lcom/android/calendar/homepage/l0;->F2:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p3, v1}, Lcom/android/calendar/homepage/j0;->d(I)V

    .line 157
    new-instance p3, Lcom/android/calendar/event/b;

    invoke-direct {p3, p1, v3, v0}, Lcom/android/calendar/event/b;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object p3, p0, Lcom/android/calendar/homepage/l0;->J1:Lcom/android/calendar/event/b;

    const-wide/16 v0, -0x1

    .line 158
    iput-wide v0, p0, Lcom/android/calendar/homepage/l0;->e:J

    .line 159
    iput-object p2, p0, Lcom/android/calendar/homepage/l0;->Z1:Landroid/widget/ViewSwitcher;

    .line 160
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/android/calendar/homepage/l0$i;

    invoke-direct {p3, p0}, Lcom/android/calendar/homepage/l0$i;-><init>(Lcom/android/calendar/homepage/l0;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/calendar/homepage/l0;->a2:Landroid/view/GestureDetector;

    .line 161
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/android/calendar/homepage/l0;->L1:Landroid/view/ScaleGestureDetector;

    .line 162
    sget p2, Lcom/android/calendar/homepage/l0;->x4:I

    if-nez p2, :cond_3

    .line 163
    iget-object p2, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    sget p3, Lcom/android/calendar/homepage/l0;->X2:I

    const-string v0, "preferences_default_cell_height"

    invoke-static {p2, v0, p3}, Lb2/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    sput p2, Lcom/android/calendar/homepage/l0;->x4:I

    .line 164
    iput p2, p0, Lcom/android/calendar/homepage/l0;->Y0:I

    .line 165
    sget p3, Lcom/android/calendar/homepage/l0;->h3:I

    add-int/2addr p2, p3

    sput p2, Lcom/android/calendar/homepage/l0;->y4:I

    goto :goto_2

    .line 166
    :cond_3
    iput p2, p0, Lcom/android/calendar/homepage/l0;->Y0:I

    .line 167
    :goto_2
    new-instance p2, Landroid/widget/OverScroller;

    invoke-direct {p2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/calendar/homepage/l0;->b2:Landroid/widget/OverScroller;

    .line 168
    new-instance p2, Lcom/android/calendar/homepage/l0$p;

    invoke-direct {p2, p0}, Lcom/android/calendar/homepage/l0$p;-><init>(Lcom/android/calendar/homepage/l0;)V

    iput-object p2, p0, Lcom/android/calendar/homepage/l0;->h2:Lcom/android/calendar/homepage/l0$p;

    .line 169
    new-instance p2, Landroid/widget/EdgeEffect;

    invoke-direct {p2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/calendar/homepage/l0;->c2:Landroid/widget/EdgeEffect;

    .line 170
    new-instance p2, Landroid/widget/EdgeEffect;

    invoke-direct {p2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/calendar/homepage/l0;->d2:Landroid/widget/EdgeEffect;

    .line 171
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 172
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p3

    sput p3, Lcom/android/calendar/homepage/l0;->c3:I

    .line 173
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result p2

    iput p2, p0, Lcom/android/calendar/homepage/l0;->f2:I

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/android/calendar/homepage/l0;->N2:I

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/calendar/homepage/l0;->u1(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private A0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->S:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/calendar/homepage/l0$l;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->S:Ljava/util/HashSet;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-wide/16 v0, -0x1

    .line 44
    .line 45
    iput-wide v0, p0, Lcom/android/calendar/homepage/l0;->T:J

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-ge v0, v1, :cond_3

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/android/calendar/homepage/l0$l;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->S:Ljava/util/HashSet;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_2

    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->S:Ljava/util/HashSet;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 97
    .line 98
    .line 99
    move-result-wide v1

    .line 100
    iput-wide v1, p0, Lcom/android/calendar/homepage/l0;->T:J

    .line 101
    .line 102
    sget-object v1, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 103
    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v3, "checkEventNewId(): mEventNewId = "

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-wide v3, p0, Lcom/android/calendar/homepage/l0;->T:J

    .line 115
    .line 116
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v1, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    :goto_2
    return-void
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method private A1()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->m0:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_4

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->Y1:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 21
    .line 22
    invoke-static {v3, v0}, Lcom/android/calendar/homepage/l0;->m1(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v3, 0x2

    .line 27
    if-eq v0, v3, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 30
    .line 31
    const v1, 0x7f1200b8

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/miui/calendar/util/t0;->f(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->isSolarRepeating()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 65
    .line 66
    iget-object v3, v3, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eq v0, v3, :cond_2

    .line 77
    .line 78
    move v0, v1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move v0, v2

    .line 81
    :goto_0
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 84
    .line 85
    const v1, 0x7f1200b9

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Lcom/miui/calendar/util/t0;->f(Landroid/content/Context;I)V

    .line 89
    .line 90
    .line 91
    return v2

    .line 92
    :cond_3
    return v1

    .line 93
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 94
    .line 95
    const v1, 0x7f1200b7

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1}, Lcom/miui/calendar/util/t0;->f(Landroid/content/Context;I)V

    .line 99
    .line 100
    .line 101
    return v2
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method static synthetic B(Lcom/android/calendar/homepage/l0;Lcom/android/calendar/homepage/l0$l;)Lcom/android/calendar/homepage/l0$l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/l0;->y:Lcom/android/calendar/homepage/l0$l;

    .line 2
    .line 3
    return-object p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private B1(II)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->k1:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/calendar/homepage/l0;->l1:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget v0, p0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 10
    .line 11
    iget v1, p0, Lcom/android/calendar/homepage/l0;->I2:I

    .line 12
    .line 13
    if-gt p1, v1, :cond_1

    .line 14
    .line 15
    sget p1, Lcom/android/calendar/homepage/l0;->B4:I

    .line 16
    .line 17
    if-le p2, p1, :cond_1

    .line 18
    .line 19
    iget v1, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 20
    .line 21
    add-int/2addr p1, v1

    .line 22
    if-lt p2, p1, :cond_2

    .line 23
    .line 24
    :cond_1
    sget-boolean p1, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 25
    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    iget p1, p0, Lcom/android/calendar/homepage/l0;->i1:I

    .line 29
    .line 30
    if-nez p1, :cond_3

    .line 31
    .line 32
    if-ge p2, v0, :cond_3

    .line 33
    .line 34
    int-to-float p1, p2

    .line 35
    int-to-float p2, v0

    .line 36
    sget v0, Lcom/android/calendar/homepage/l0;->j3:F

    .line 37
    .line 38
    sub-float/2addr p2, v0

    .line 39
    cmpl-float p1, p1, p2

    .line 40
    .line 41
    if-ltz p1, :cond_3

    .line 42
    .line 43
    :cond_2
    const/4 p1, 0x1

    .line 44
    return p1

    .line 45
    :cond_3
    return v2
    .line 46
    .line 47
.end method

.method static synthetic C(Lcom/android/calendar/homepage/l0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/l0;->m0:I

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private C1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->G1()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x2

    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->G1()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method static synthetic D(Lcom/android/calendar/homepage/l0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/l0;->o0:I

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private D1(II)Z
    .locals 6

    .line 1
    sget v0, Lcom/android/calendar/homepage/l0;->B4:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/android/calendar/homepage/l0;->I2:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->G1()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget v2, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v2, p0, Lcom/android/calendar/homepage/l0;->W0:I

    .line 22
    .line 23
    :goto_0
    const/4 v3, 0x1

    .line 24
    if-ge p2, v0, :cond_2

    .line 25
    .line 26
    if-ge p1, v2, :cond_2

    .line 27
    .line 28
    iget v4, p0, Lcom/android/calendar/homepage/l0;->k1:I

    .line 29
    .line 30
    iget v5, p0, Lcom/android/calendar/homepage/l0;->l1:I

    .line 31
    .line 32
    if-gt v4, v5, :cond_1

    .line 33
    .line 34
    if-le p1, v1, :cond_2

    .line 35
    .line 36
    :cond_1
    return v3

    .line 37
    :cond_2
    if-lt p2, v0, :cond_3

    .line 38
    .line 39
    if-le p1, v1, :cond_3

    .line 40
    .line 41
    if-ge p1, v2, :cond_3

    .line 42
    .line 43
    return v3

    .line 44
    :cond_3
    const/4 p1, 0x0

    .line 45
    return p1
    .line 46
    .line 47
.end method

.method static synthetic E(Lcom/android/calendar/homepage/l0;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->k1(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic F(Lcom/android/calendar/homepage/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->h2(I)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private F1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->j2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->i2:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic G(Lcom/android/calendar/homepage/l0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/l0;->Q:I

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic H(Lcom/android/calendar/homepage/l0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->Q:I

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private H0()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Lcom/android/calendar/homepage/l0;->q:I

    .line 8
    .line 9
    iget v3, p0, Lcom/android/calendar/homepage/l0;->o:I

    .line 10
    .line 11
    sub-int/2addr v2, v3

    .line 12
    const/4 v3, 0x1

    .line 13
    add-int/2addr v2, v3

    .line 14
    new-array v2, v2, [I

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 18
    .line 19
    .line 20
    move v5, v4

    .line 21
    move v6, v5

    .line 22
    :goto_0
    if-ge v5, v1, :cond_9

    .line 23
    .line 24
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    check-cast v7, Lcom/android/calendar/homepage/l0$l;

    .line 29
    .line 30
    iget-object v7, v7, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 31
    .line 32
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-virtual {v8}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    iget v9, p0, Lcom/android/calendar/homepage/l0;->q:I

    .line 41
    .line 42
    if-gt v8, v9, :cond_8

    .line 43
    .line 44
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-virtual {v8}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    iget v9, p0, Lcom/android/calendar/homepage/l0;->o:I

    .line 53
    .line 54
    if-ge v8, v9, :cond_0

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_0
    invoke-static {v7}, Lcom/android/calendar/homepage/f;->a(Lcom/android/calendar/common/event/schema/Event;)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_1

    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_1
    invoke-static {v7}, Lcom/android/calendar/homepage/f;->a(Lcom/android/calendar/common/event/schema/Event;)Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-eqz v8, :cond_6

    .line 71
    .line 72
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-virtual {v8}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    iget v9, p0, Lcom/android/calendar/homepage/l0;->o:I

    .line 81
    .line 82
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v9}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    iget v10, p0, Lcom/android/calendar/homepage/l0;->q:I

    .line 95
    .line 96
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    :goto_1
    if-gt v8, v9, :cond_3

    .line 101
    .line 102
    iget v10, p0, Lcom/android/calendar/homepage/l0;->o:I

    .line 103
    .line 104
    sub-int v10, v8, v10

    .line 105
    .line 106
    aget v11, v2, v10

    .line 107
    .line 108
    add-int/2addr v11, v3

    .line 109
    aput v11, v2, v10

    .line 110
    .line 111
    if-ge v6, v11, :cond_2

    .line 112
    .line 113
    move v6, v11

    .line 114
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-virtual {v8}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    iget v9, p0, Lcom/android/calendar/homepage/l0;->o:I

    .line 126
    .line 127
    sub-int/2addr v8, v9

    .line 128
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-virtual {v9}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    sub-int/2addr v9, v7

    .line 145
    add-int/2addr v9, v3

    .line 146
    if-gez v8, :cond_4

    .line 147
    .line 148
    add-int/2addr v9, v8

    .line 149
    move v8, v4

    .line 150
    :cond_4
    add-int v7, v8, v9

    .line 151
    .line 152
    iget v10, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 153
    .line 154
    if-le v7, v10, :cond_5

    .line 155
    .line 156
    sub-int v9, v10, v8

    .line 157
    .line 158
    :cond_5
    :goto_2
    if-lez v9, :cond_8

    .line 159
    .line 160
    iget-object v7, p0, Lcom/android/calendar/homepage/l0;->v:[Z

    .line 161
    .line 162
    aput-boolean v3, v7, v8

    .line 163
    .line 164
    add-int/2addr v8, v3

    .line 165
    add-int/lit8 v9, v9, -0x1

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_6
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {v8}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    iget v9, p0, Lcom/android/calendar/homepage/l0;->o:I

    .line 177
    .line 178
    sub-int/2addr v8, v9

    .line 179
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    invoke-virtual {v9}, Lcom/android/calendar/common/event/schema/EventEx;->getStartMinute()I

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    div-int/lit8 v9, v9, 0x3c

    .line 188
    .line 189
    if-ltz v8, :cond_7

    .line 190
    .line 191
    iget-object v10, p0, Lcom/android/calendar/homepage/l0;->r:[I

    .line 192
    .line 193
    aget v11, v10, v8

    .line 194
    .line 195
    if-ge v9, v11, :cond_7

    .line 196
    .line 197
    aput v9, v10, v8

    .line 198
    .line 199
    :cond_7
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-virtual {v8}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    iget v9, p0, Lcom/android/calendar/homepage/l0;->o:I

    .line 208
    .line 209
    sub-int/2addr v8, v9

    .line 210
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/EventEx;->getEndMinute()I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    div-int/lit8 v7, v7, 0x3c

    .line 219
    .line 220
    iget v9, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 221
    .line 222
    if-ge v8, v9, :cond_8

    .line 223
    .line 224
    iget-object v9, p0, Lcom/android/calendar/homepage/l0;->r:[I

    .line 225
    .line 226
    aget v10, v9, v8

    .line 227
    .line 228
    if-ge v7, v10, :cond_8

    .line 229
    .line 230
    aput v7, v9, v8

    .line 231
    .line 232
    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :cond_9
    iput v6, p0, Lcom/android/calendar/homepage/l0;->k1:I

    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->w1()V

    .line 239
    .line 240
    .line 241
    return-void
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

.method private synthetic H1()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->N2:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/miui/calendar/util/g$s0;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/g$s0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic I(Lcom/android/calendar/homepage/l0;)Lcom/android/calendar/common/event/schema/Event;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private I0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "computeFirstHour ---1 mFirstHour:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget v2, p0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " mViewStartY:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v2, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, " hashCode:"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 48
    .line 49
    sget v1, Lcom/android/calendar/homepage/l0;->x4:I

    .line 50
    .line 51
    add-int/2addr v0, v1

    .line 52
    sget v2, Lcom/android/calendar/homepage/l0;->h3:I

    .line 53
    .line 54
    add-int/2addr v0, v2

    .line 55
    add-int/lit8 v0, v0, -0x1

    .line 56
    .line 57
    add-int/2addr v1, v2

    .line 58
    div-int/2addr v0, v1

    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 65
    .line 66
    sget v1, Lcom/android/calendar/homepage/l0;->x4:I

    .line 67
    .line 68
    sget v2, Lcom/android/calendar/homepage/l0;->h3:I

    .line 69
    .line 70
    add-int/2addr v1, v2

    .line 71
    mul-int/2addr v0, v1

    .line 72
    iget v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 73
    .line 74
    sub-int/2addr v0, v1

    .line 75
    iput v0, p0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 76
    .line 77
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "computeFirstHour ---2 mFirstHour:"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget v2, p0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, " mFirstHourOffset:"

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget v2, p0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method static synthetic J(Lcom/android/calendar/homepage/l0;)Lcom/android/calendar/homepage/l0$l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private J0()V
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_37

    .line 10
    .line 11
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1e

    .line 16
    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    const/4 v4, 0x0

    .line 20
    if-ge v3, v1, :cond_1

    .line 21
    .line 22
    iget-object v5, v0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lcom/android/calendar/homepage/l0$l;

    .line 29
    .line 30
    iput-object v4, v5, Lcom/android/calendar/homepage/l0$l;->j:Lcom/android/calendar/homepage/l0$l;

    .line 31
    .line 32
    iput-object v4, v5, Lcom/android/calendar/homepage/l0$l;->k:Lcom/android/calendar/homepage/l0$l;

    .line 33
    .line 34
    iput-object v4, v5, Lcom/android/calendar/homepage/l0$l;->i:Lcom/android/calendar/homepage/l0$l;

    .line 35
    .line 36
    iput-object v4, v5, Lcom/android/calendar/homepage/l0$l;->h:Lcom/android/calendar/homepage/l0$l;

    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v3, v0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/android/calendar/homepage/l0$l;

    .line 48
    .line 49
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->getCurrentSelectionPosition()Landroid/graphics/Rect;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iget-object v6, v0, Lcom/android/calendar/homepage/l0;->z1:Lcom/android/calendar/homepage/l0$l;

    .line 54
    .line 55
    if-eqz v6, :cond_5

    .line 56
    .line 57
    iget v7, v6, Lcom/android/calendar/homepage/l0$l;->d:F

    .line 58
    .line 59
    float-to-int v7, v7

    .line 60
    iget v8, v6, Lcom/android/calendar/homepage/l0$l;->e:F

    .line 61
    .line 62
    float-to-int v8, v8

    .line 63
    iget v9, v6, Lcom/android/calendar/homepage/l0$l;->b:F

    .line 64
    .line 65
    float-to-int v9, v9

    .line 66
    iget v6, v6, Lcom/android/calendar/homepage/l0$l;->c:F

    .line 67
    .line 68
    float-to-int v6, v6

    .line 69
    iget-object v10, v0, Lcom/android/calendar/homepage/l0;->A1:Landroid/graphics/Rect;

    .line 70
    .line 71
    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 72
    .line 73
    if-ge v7, v11, :cond_4

    .line 74
    .line 75
    iget v12, v10, Landroid/graphics/Rect;->top:I

    .line 76
    .line 77
    if-le v8, v12, :cond_4

    .line 78
    .line 79
    iget v13, v10, Landroid/graphics/Rect;->left:I

    .line 80
    .line 81
    if-le v6, v13, :cond_4

    .line 82
    .line 83
    iget v13, v10, Landroid/graphics/Rect;->right:I

    .line 84
    .line 85
    if-lt v9, v13, :cond_2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    if-ge v7, v12, :cond_3

    .line 89
    .line 90
    move v7, v12

    .line 91
    :cond_3
    if-le v8, v11, :cond_6

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    :goto_1
    iput-object v4, v0, Lcom/android/calendar/homepage/l0;->z1:Lcom/android/calendar/homepage/l0$l;

    .line 95
    .line 96
    iget v7, v10, Landroid/graphics/Rect;->top:I

    .line 97
    .line 98
    iget v9, v10, Landroid/graphics/Rect;->left:I

    .line 99
    .line 100
    iget v6, v10, Landroid/graphics/Rect;->right:I

    .line 101
    .line 102
    :goto_2
    move v8, v11

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    iget-object v6, v0, Lcom/android/calendar/homepage/l0;->A1:Landroid/graphics/Rect;

    .line 105
    .line 106
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 107
    .line 108
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 109
    .line 110
    iget v9, v6, Landroid/graphics/Rect;->left:I

    .line 111
    .line 112
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 113
    .line 114
    :cond_6
    :goto_3
    iget v10, v5, Landroid/graphics/Rect;->right:I

    .line 115
    .line 116
    const/4 v14, 0x2

    .line 117
    if-lt v9, v10, :cond_7

    .line 118
    .line 119
    add-int v10, v7, v8

    .line 120
    .line 121
    div-int/2addr v10, v14

    .line 122
    const/16 v15, 0x8

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_7
    iget v10, v5, Landroid/graphics/Rect;->left:I

    .line 126
    .line 127
    if-gt v6, v10, :cond_8

    .line 128
    .line 129
    add-int v10, v7, v8

    .line 130
    .line 131
    div-int/2addr v10, v14

    .line 132
    const/4 v15, 0x4

    .line 133
    goto :goto_4

    .line 134
    :cond_8
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 135
    .line 136
    if-gt v8, v10, :cond_9

    .line 137
    .line 138
    add-int v10, v9, v6

    .line 139
    .line 140
    div-int/2addr v10, v14

    .line 141
    const/4 v15, 0x1

    .line 142
    goto :goto_4

    .line 143
    :cond_9
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 144
    .line 145
    if-lt v7, v10, :cond_a

    .line 146
    .line 147
    add-int v10, v9, v6

    .line 148
    .line 149
    div-int/2addr v10, v14

    .line 150
    move v15, v14

    .line 151
    goto :goto_4

    .line 152
    :cond_a
    move v10, v2

    .line 153
    move v15, v10

    .line 154
    :goto_4
    const v16, 0x186a0

    .line 155
    .line 156
    .line 157
    move v12, v2

    .line 158
    move/from16 v2, v16

    .line 159
    .line 160
    move v4, v2

    .line 161
    :goto_5
    if-ge v12, v1, :cond_36

    .line 162
    .line 163
    iget-object v11, v0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    check-cast v11, Lcom/android/calendar/homepage/l0$l;

    .line 170
    .line 171
    iget-object v14, v11, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 172
    .line 173
    invoke-virtual {v14}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 174
    .line 175
    .line 176
    move-result-object v14

    .line 177
    invoke-virtual {v14}, Lcom/android/calendar/common/event/schema/EventEx;->getStartMinute()I

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    iget-object v13, v11, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 182
    .line 183
    invoke-virtual {v13}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 184
    .line 185
    .line 186
    move-result-object v13

    .line 187
    invoke-virtual {v13}, Lcom/android/calendar/common/event/schema/EventEx;->getEndMinute()I

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    move-object/from16 v21, v3

    .line 192
    .line 193
    iget v3, v11, Lcom/android/calendar/homepage/l0$l;->b:F

    .line 194
    .line 195
    float-to-int v3, v3

    .line 196
    move/from16 v22, v13

    .line 197
    .line 198
    iget v13, v11, Lcom/android/calendar/homepage/l0$l;->c:F

    .line 199
    .line 200
    float-to-int v13, v13

    .line 201
    move/from16 v23, v14

    .line 202
    .line 203
    iget v14, v11, Lcom/android/calendar/homepage/l0$l;->d:F

    .line 204
    .line 205
    float-to-int v14, v14

    .line 206
    iget v0, v5, Landroid/graphics/Rect;->top:I

    .line 207
    .line 208
    if-ge v14, v0, :cond_b

    .line 209
    .line 210
    move v14, v0

    .line 211
    :cond_b
    iget v0, v11, Lcom/android/calendar/homepage/l0$l;->e:F

    .line 212
    .line 213
    float-to-int v0, v0

    .line 214
    move-object/from16 v24, v11

    .line 215
    .line 216
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    .line 217
    .line 218
    if-le v0, v11, :cond_c

    .line 219
    .line 220
    move v0, v11

    .line 221
    :cond_c
    const/4 v11, 0x1

    .line 222
    if-ne v15, v11, :cond_f

    .line 223
    .line 224
    if-lt v3, v10, :cond_d

    .line 225
    .line 226
    sub-int v20, v3, v10

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_d
    if-gt v13, v10, :cond_e

    .line 230
    .line 231
    sub-int v20, v10, v13

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_e
    const/16 v20, 0x0

    .line 235
    .line 236
    :goto_6
    sub-int v25, v14, v8

    .line 237
    .line 238
    :goto_7
    move/from16 v11, v20

    .line 239
    .line 240
    move-object/from16 v20, v5

    .line 241
    .line 242
    move/from16 v5, v25

    .line 243
    .line 244
    goto :goto_e

    .line 245
    :cond_f
    const/4 v11, 0x2

    .line 246
    if-ne v15, v11, :cond_12

    .line 247
    .line 248
    if-lt v3, v10, :cond_10

    .line 249
    .line 250
    sub-int v11, v3, v10

    .line 251
    .line 252
    :goto_8
    move/from16 v20, v11

    .line 253
    .line 254
    goto :goto_9

    .line 255
    :cond_10
    if-gt v13, v10, :cond_11

    .line 256
    .line 257
    sub-int v11, v10, v13

    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_11
    const/16 v20, 0x0

    .line 261
    .line 262
    :goto_9
    sub-int v25, v7, v0

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_12
    const/4 v11, 0x4

    .line 266
    if-ne v15, v11, :cond_15

    .line 267
    .line 268
    if-gt v0, v10, :cond_13

    .line 269
    .line 270
    sub-int v18, v10, v0

    .line 271
    .line 272
    :goto_a
    move/from16 v20, v18

    .line 273
    .line 274
    goto :goto_b

    .line 275
    :cond_13
    if-lt v14, v10, :cond_14

    .line 276
    .line 277
    sub-int v18, v14, v10

    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_14
    const/16 v20, 0x0

    .line 281
    .line 282
    :goto_b
    sub-int v25, v3, v6

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_15
    const/16 v11, 0x8

    .line 286
    .line 287
    if-ne v15, v11, :cond_18

    .line 288
    .line 289
    if-gt v0, v10, :cond_16

    .line 290
    .line 291
    sub-int v17, v10, v0

    .line 292
    .line 293
    :goto_c
    move/from16 v20, v17

    .line 294
    .line 295
    goto :goto_d

    .line 296
    :cond_16
    if-lt v14, v10, :cond_17

    .line 297
    .line 298
    sub-int v17, v14, v10

    .line 299
    .line 300
    goto :goto_c

    .line 301
    :cond_17
    const/16 v20, 0x0

    .line 302
    .line 303
    :goto_d
    sub-int v25, v9, v13

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_18
    move-object/from16 v20, v5

    .line 307
    .line 308
    const/4 v5, 0x0

    .line 309
    const/4 v11, 0x0

    .line 310
    :goto_e
    if-lt v11, v2, :cond_19

    .line 311
    .line 312
    if-ne v11, v2, :cond_1a

    .line 313
    .line 314
    if-ge v5, v4, :cond_1a

    .line 315
    .line 316
    :cond_19
    move v4, v5

    .line 317
    move v2, v11

    .line 318
    move-object/from16 v21, v24

    .line 319
    .line 320
    :cond_1a
    const/16 v5, 0x2710

    .line 321
    .line 322
    move/from16 v25, v2

    .line 323
    .line 324
    move/from16 v26, v4

    .line 325
    .line 326
    move v2, v5

    .line 327
    move v4, v2

    .line 328
    move v11, v4

    .line 329
    move/from16 v27, v6

    .line 330
    .line 331
    move/from16 v28, v7

    .line 332
    .line 333
    move/from16 v29, v8

    .line 334
    .line 335
    move/from16 v30, v9

    .line 336
    .line 337
    move/from16 v31, v10

    .line 338
    .line 339
    const/4 v6, 0x0

    .line 340
    const/4 v7, 0x0

    .line 341
    const/4 v8, 0x0

    .line 342
    const/4 v9, 0x0

    .line 343
    const/4 v10, 0x0

    .line 344
    :goto_f
    if-ge v6, v1, :cond_35

    .line 345
    .line 346
    if-ne v6, v12, :cond_1b

    .line 347
    .line 348
    move/from16 v32, v1

    .line 349
    .line 350
    move/from16 v35, v6

    .line 351
    .line 352
    move/from16 v34, v12

    .line 353
    .line 354
    move/from16 v33, v15

    .line 355
    .line 356
    move/from16 v38, v23

    .line 357
    .line 358
    move/from16 v23, v22

    .line 359
    .line 360
    goto/16 :goto_1d

    .line 361
    .line 362
    :cond_1b
    move/from16 v32, v1

    .line 363
    .line 364
    move/from16 v33, v15

    .line 365
    .line 366
    move-object/from16 v1, p0

    .line 367
    .line 368
    iget-object v15, v1, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 369
    .line 370
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v15

    .line 374
    check-cast v15, Lcom/android/calendar/homepage/l0$l;

    .line 375
    .line 376
    iget v1, v15, Lcom/android/calendar/homepage/l0$l;->b:F

    .line 377
    .line 378
    float-to-int v1, v1

    .line 379
    move/from16 v34, v12

    .line 380
    .line 381
    iget v12, v15, Lcom/android/calendar/homepage/l0$l;->c:F

    .line 382
    .line 383
    float-to-int v12, v12

    .line 384
    move/from16 v35, v6

    .line 385
    .line 386
    iget-object v6, v15, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 387
    .line 388
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/EventEx;->getEndMinute()I

    .line 393
    .line 394
    .line 395
    move-result v6

    .line 396
    move-object/from16 v36, v9

    .line 397
    .line 398
    move/from16 v9, v23

    .line 399
    .line 400
    if-gt v6, v9, :cond_24

    .line 401
    .line 402
    if-ge v1, v13, :cond_23

    .line 403
    .line 404
    if-le v12, v3, :cond_23

    .line 405
    .line 406
    iget-object v6, v15, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 407
    .line 408
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/EventEx;->getEndMinute()I

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    sub-int v6, v9, v6

    .line 417
    .line 418
    if-ge v6, v5, :cond_1c

    .line 419
    .line 420
    move/from16 v23, v6

    .line 421
    .line 422
    move/from16 v38, v9

    .line 423
    .line 424
    goto :goto_12

    .line 425
    :cond_1c
    if-ne v6, v5, :cond_21

    .line 426
    .line 427
    add-int v23, v3, v13

    .line 428
    .line 429
    move/from16 v37, v5

    .line 430
    .line 431
    const/16 v19, 0x2

    .line 432
    .line 433
    div-int/lit8 v5, v23, 0x2

    .line 434
    .line 435
    move/from16 v23, v6

    .line 436
    .line 437
    iget v6, v7, Lcom/android/calendar/homepage/l0$l;->b:F

    .line 438
    .line 439
    float-to-int v6, v6

    .line 440
    move/from16 v38, v9

    .line 441
    .line 442
    iget v9, v7, Lcom/android/calendar/homepage/l0$l;->c:F

    .line 443
    .line 444
    float-to-int v9, v9

    .line 445
    if-gt v9, v5, :cond_1d

    .line 446
    .line 447
    sub-int v6, v5, v9

    .line 448
    .line 449
    goto :goto_10

    .line 450
    :cond_1d
    if-lt v6, v5, :cond_1e

    .line 451
    .line 452
    sub-int/2addr v6, v5

    .line 453
    goto :goto_10

    .line 454
    :cond_1e
    const/4 v6, 0x0

    .line 455
    :goto_10
    if-gt v12, v5, :cond_1f

    .line 456
    .line 457
    sub-int/2addr v5, v12

    .line 458
    goto :goto_11

    .line 459
    :cond_1f
    if-lt v1, v5, :cond_20

    .line 460
    .line 461
    sub-int v5, v1, v5

    .line 462
    .line 463
    goto :goto_11

    .line 464
    :cond_20
    const/4 v5, 0x0

    .line 465
    :goto_11
    if-ge v5, v6, :cond_22

    .line 466
    .line 467
    :goto_12
    move-object v7, v15

    .line 468
    move/from16 v5, v23

    .line 469
    .line 470
    goto :goto_13

    .line 471
    :cond_21
    move/from16 v37, v5

    .line 472
    .line 473
    move/from16 v38, v9

    .line 474
    .line 475
    :cond_22
    move/from16 v5, v37

    .line 476
    .line 477
    :goto_13
    move/from16 v23, v22

    .line 478
    .line 479
    goto/16 :goto_18

    .line 480
    .line 481
    :cond_23
    move/from16 v37, v5

    .line 482
    .line 483
    move/from16 v38, v9

    .line 484
    .line 485
    move/from16 v23, v22

    .line 486
    .line 487
    goto :goto_17

    .line 488
    :cond_24
    move/from16 v37, v5

    .line 489
    .line 490
    move/from16 v38, v9

    .line 491
    .line 492
    iget-object v5, v15, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 493
    .line 494
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 495
    .line 496
    .line 497
    move-result-object v5

    .line 498
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/EventEx;->getStartMinute()I

    .line 499
    .line 500
    .line 501
    move-result v5

    .line 502
    move/from16 v6, v22

    .line 503
    .line 504
    if-lt v5, v6, :cond_2a

    .line 505
    .line 506
    if-ge v1, v13, :cond_2a

    .line 507
    .line 508
    if-le v12, v3, :cond_2a

    .line 509
    .line 510
    iget-object v5, v15, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 511
    .line 512
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 513
    .line 514
    .line 515
    move-result-object v5

    .line 516
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/EventEx;->getStartMinute()I

    .line 517
    .line 518
    .line 519
    move-result v5

    .line 520
    sub-int/2addr v5, v6

    .line 521
    if-ge v5, v11, :cond_25

    .line 522
    .line 523
    move/from16 v22, v5

    .line 524
    .line 525
    move/from16 v23, v6

    .line 526
    .line 527
    goto :goto_16

    .line 528
    :cond_25
    if-ne v5, v11, :cond_2a

    .line 529
    .line 530
    add-int v9, v3, v13

    .line 531
    .line 532
    const/16 v19, 0x2

    .line 533
    .line 534
    div-int/lit8 v9, v9, 0x2

    .line 535
    .line 536
    move/from16 v22, v5

    .line 537
    .line 538
    iget v5, v8, Lcom/android/calendar/homepage/l0$l;->b:F

    .line 539
    .line 540
    float-to-int v5, v5

    .line 541
    move/from16 v23, v6

    .line 542
    .line 543
    iget v6, v8, Lcom/android/calendar/homepage/l0$l;->c:F

    .line 544
    .line 545
    float-to-int v6, v6

    .line 546
    if-gt v6, v9, :cond_26

    .line 547
    .line 548
    sub-int v5, v9, v6

    .line 549
    .line 550
    goto :goto_14

    .line 551
    :cond_26
    if-lt v5, v9, :cond_27

    .line 552
    .line 553
    sub-int/2addr v5, v9

    .line 554
    goto :goto_14

    .line 555
    :cond_27
    const/4 v5, 0x0

    .line 556
    :goto_14
    if-gt v12, v9, :cond_28

    .line 557
    .line 558
    sub-int/2addr v9, v12

    .line 559
    goto :goto_15

    .line 560
    :cond_28
    if-lt v1, v9, :cond_29

    .line 561
    .line 562
    sub-int v9, v1, v9

    .line 563
    .line 564
    goto :goto_15

    .line 565
    :cond_29
    const/4 v9, 0x0

    .line 566
    :goto_15
    if-ge v9, v5, :cond_2b

    .line 567
    .line 568
    :goto_16
    move-object v8, v15

    .line 569
    move/from16 v11, v22

    .line 570
    .line 571
    goto :goto_17

    .line 572
    :cond_2a
    move/from16 v23, v6

    .line 573
    .line 574
    :cond_2b
    :goto_17
    move/from16 v5, v37

    .line 575
    .line 576
    :goto_18
    if-lt v1, v13, :cond_30

    .line 577
    .line 578
    add-int v6, v14, v0

    .line 579
    .line 580
    const/4 v9, 0x2

    .line 581
    div-int/2addr v6, v9

    .line 582
    iget v9, v15, Lcom/android/calendar/homepage/l0$l;->e:F

    .line 583
    .line 584
    float-to-int v9, v9

    .line 585
    iget v12, v15, Lcom/android/calendar/homepage/l0$l;->d:F

    .line 586
    .line 587
    float-to-int v12, v12

    .line 588
    if-gt v9, v6, :cond_2c

    .line 589
    .line 590
    sub-int/2addr v6, v9

    .line 591
    goto :goto_19

    .line 592
    :cond_2c
    if-lt v12, v6, :cond_2d

    .line 593
    .line 594
    sub-int v6, v12, v6

    .line 595
    .line 596
    goto :goto_19

    .line 597
    :cond_2d
    const/4 v6, 0x0

    .line 598
    :goto_19
    if-ge v6, v4, :cond_2e

    .line 599
    .line 600
    goto :goto_1a

    .line 601
    :cond_2e
    if-ne v6, v4, :cond_2f

    .line 602
    .line 603
    sub-int/2addr v1, v13

    .line 604
    iget v9, v10, Lcom/android/calendar/homepage/l0$l;->b:F

    .line 605
    .line 606
    float-to-int v9, v9

    .line 607
    sub-int/2addr v9, v13

    .line 608
    if-ge v1, v9, :cond_2f

    .line 609
    .line 610
    :goto_1a
    move v4, v6

    .line 611
    move-object v10, v15

    .line 612
    :cond_2f
    move-object/from16 v9, v36

    .line 613
    .line 614
    goto :goto_1d

    .line 615
    :cond_30
    if-gt v12, v3, :cond_2f

    .line 616
    .line 617
    add-int v1, v14, v0

    .line 618
    .line 619
    const/4 v6, 0x2

    .line 620
    div-int/2addr v1, v6

    .line 621
    iget v9, v15, Lcom/android/calendar/homepage/l0$l;->e:F

    .line 622
    .line 623
    float-to-int v9, v9

    .line 624
    iget v6, v15, Lcom/android/calendar/homepage/l0$l;->d:F

    .line 625
    .line 626
    float-to-int v6, v6

    .line 627
    if-gt v9, v1, :cond_31

    .line 628
    .line 629
    sub-int/2addr v1, v9

    .line 630
    goto :goto_1b

    .line 631
    :cond_31
    if-lt v6, v1, :cond_32

    .line 632
    .line 633
    sub-int v1, v6, v1

    .line 634
    .line 635
    goto :goto_1b

    .line 636
    :cond_32
    const/4 v1, 0x0

    .line 637
    :goto_1b
    if-ge v1, v2, :cond_33

    .line 638
    .line 639
    goto :goto_1c

    .line 640
    :cond_33
    if-ne v1, v2, :cond_2f

    .line 641
    .line 642
    sub-int v6, v3, v12

    .line 643
    .line 644
    move-object/from16 v9, v36

    .line 645
    .line 646
    iget v12, v9, Lcom/android/calendar/homepage/l0$l;->c:F

    .line 647
    .line 648
    float-to-int v12, v12

    .line 649
    sub-int v12, v3, v12

    .line 650
    .line 651
    if-ge v6, v12, :cond_34

    .line 652
    .line 653
    :goto_1c
    move v2, v1

    .line 654
    move-object v9, v15

    .line 655
    :cond_34
    :goto_1d
    add-int/lit8 v6, v35, 0x1

    .line 656
    .line 657
    move/from16 v22, v23

    .line 658
    .line 659
    move/from16 v1, v32

    .line 660
    .line 661
    move/from16 v15, v33

    .line 662
    .line 663
    move/from16 v12, v34

    .line 664
    .line 665
    move/from16 v23, v38

    .line 666
    .line 667
    goto/16 :goto_f

    .line 668
    .line 669
    :cond_35
    move/from16 v32, v1

    .line 670
    .line 671
    move/from16 v34, v12

    .line 672
    .line 673
    move/from16 v33, v15

    .line 674
    .line 675
    move-object/from16 v11, v24

    .line 676
    .line 677
    iput-object v7, v11, Lcom/android/calendar/homepage/l0$l;->j:Lcom/android/calendar/homepage/l0$l;

    .line 678
    .line 679
    iput-object v8, v11, Lcom/android/calendar/homepage/l0$l;->k:Lcom/android/calendar/homepage/l0$l;

    .line 680
    .line 681
    iput-object v9, v11, Lcom/android/calendar/homepage/l0$l;->i:Lcom/android/calendar/homepage/l0$l;

    .line 682
    .line 683
    iput-object v10, v11, Lcom/android/calendar/homepage/l0$l;->h:Lcom/android/calendar/homepage/l0$l;

    .line 684
    .line 685
    add-int/lit8 v12, v34, 0x1

    .line 686
    .line 687
    const/4 v14, 0x2

    .line 688
    move-object/from16 v0, p0

    .line 689
    .line 690
    move-object/from16 v5, v20

    .line 691
    .line 692
    move-object/from16 v3, v21

    .line 693
    .line 694
    move/from16 v2, v25

    .line 695
    .line 696
    move/from16 v4, v26

    .line 697
    .line 698
    move/from16 v6, v27

    .line 699
    .line 700
    move/from16 v7, v28

    .line 701
    .line 702
    move/from16 v8, v29

    .line 703
    .line 704
    move/from16 v9, v30

    .line 705
    .line 706
    move/from16 v10, v31

    .line 707
    .line 708
    goto/16 :goto_5

    .line 709
    .line 710
    :cond_36
    invoke-direct {v0, v3}, Lcom/android/calendar/homepage/l0;->setSelectedEvent(Lcom/android/calendar/homepage/l0$l;)V

    .line 711
    .line 712
    .line 713
    :cond_37
    :goto_1e
    return-void
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

.method static synthetic K()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private K0(IIII)I
    .locals 0

    .line 1
    sub-int/2addr p1, p3

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 3
    .line 4
    .line 5
    move-result p3

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    mul-int/2addr p3, p1

    .line 11
    sub-int/2addr p2, p4

    .line 12
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    mul-int/2addr p1, p2

    .line 21
    add-int/2addr p3, p1

    .line 22
    int-to-double p1, p3

    .line 23
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    double-to-int p1, p1

    .line 28
    return p1
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method private K1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->G1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/l0;->t0(Lcom/miui/calendar/util/r0;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->l()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-static {v0, v1, v2, v3}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/calendar/homepage/l0;->o:I

    .line 30
    .line 31
    iget v1, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 32
    .line 33
    add-int/2addr v0, v1

    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    iput v0, p0, Lcom/android/calendar/homepage/l0;->q:I

    .line 37
    .line 38
    return-void
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method static synthetic L(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->f2()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private L0(Ljava/util/ArrayList;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/homepage/l0$l;",
            ">;J)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/calendar/homepage/l0;->P0(Ljava/util/ArrayList;JZ)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/calendar/homepage/l0;->P0(Ljava/util/ArrayList;JZ)V

    .line 10
    .line 11
    .line 12
    return-void
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic M(Lcom/android/calendar/homepage/l0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/homepage/l0;->P1:Z

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private M0(JJZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 2
    .line 3
    move-wide v1, p1

    .line 4
    move-wide v3, p3

    .line 5
    move v5, p5

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/common/Utils;->B0(Landroid/content/Context;JJZ)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/android/calendar/homepage/k0;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/android/calendar/homepage/k0;-><init>(Lcom/android/calendar/homepage/l0;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method static synthetic N(Lcom/android/calendar/homepage/l0;)Lcom/android/calendar/homepage/l0$o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/l0;->h:Lcom/android/calendar/homepage/l0$o;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private N0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getSyncId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->isFirstEventInSeries()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x2

    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 36
    .line 37
    :goto_0
    move v3, v4

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    if-eqz v1, :cond_2

    .line 40
    .line 41
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v2, 0x3

    .line 45
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 46
    .line 47
    :goto_1
    iget-object v5, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 48
    .line 49
    const v6, 0x7f12034d

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    aput-object v5, v2, v4

    .line 57
    .line 58
    :goto_2
    add-int/lit8 v4, v3, 0x1

    .line 59
    .line 60
    iget-object v5, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 61
    .line 62
    const v6, 0x7f12034b

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    aput-object v5, v2, v3

    .line 70
    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 74
    .line 75
    const v3, 0x7f12034c

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    aput-object v1, v2, v4

    .line 83
    .line 84
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->P:Lmiuix/appcompat/app/l;

    .line 85
    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    invoke-virtual {v1}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 89
    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->P:Lmiuix/appcompat/app/l;

    .line 93
    .line 94
    :cond_4
    new-instance v1, Lmiuix/appcompat/app/l$b;

    .line 95
    .line 96
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 97
    .line 98
    invoke-direct {v1, v3}, Lmiuix/appcompat/app/l$b;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    const v3, 0x7f12019f

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/l$b;->F(I)Lmiuix/appcompat/app/l$b;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    new-instance v3, Lcom/android/calendar/homepage/l0$g;

    .line 109
    .line 110
    invoke-direct {v3, p0, v0}, Lcom/android/calendar/homepage/l0$g;-><init>(Lcom/android/calendar/homepage/l0;Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/l$b;->l([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lmiuix/appcompat/app/l$b;->J()Lmiuix/appcompat/app/l;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/android/calendar/homepage/l0;->P:Lmiuix/appcompat/app/l;

    .line 122
    .line 123
    new-instance v1, Lcom/android/calendar/homepage/l0$h;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lcom/android/calendar/homepage/l0$h;-><init>(Lcom/android/calendar/homepage/l0;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 129
    .line 130
    .line 131
    return-void
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method private N1(Lcom/android/calendar/common/event/schema/Event;Ljava/util/Iterator;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/common/event/schema/Event;",
            "Ljava/util/Iterator<",
            "Lcom/android/calendar/homepage/l0$l;",
            ">;J)J"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/calendar/homepage/l0$l;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ge v1, v2, :cond_0

    .line 32
    .line 33
    const-wide/16 v1, 0x1

    .line 34
    .line 35
    iget v0, v0, Lcom/android/calendar/homepage/l0$l;->f:I

    .line 36
    .line 37
    shl-long v0, v1, v0

    .line 38
    .line 39
    not-long v0, v0

    .line 40
    and-long/2addr p3, v0

    .line 41
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-wide p3
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method static synthetic O(Lcom/android/calendar/homepage/l0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/homepage/l0;->P1:Z

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private O0(F)F
    .locals 4

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    sub-float/2addr p1, v0

    .line 4
    float-to-double v0, p1

    .line 5
    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    mul-double/2addr v0, v2

    .line 11
    double-to-float p1, v0

    .line 12
    float-to-double v0, p1

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    double-to-float p1, v0

    .line 18
    return p1
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private O1(Lcom/android/calendar/homepage/l0$l;Ljava/util/Iterator;JJ)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/homepage/l0$l;",
            "Ljava/util/Iterator<",
            "Lcom/android/calendar/homepage/l0$l;",
            ">;JJ)J"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/calendar/homepage/l0$l;

    .line 18
    .line 19
    iget-object v2, p1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iget-object v4, p1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    sub-long/2addr v2, v4

    .line 32
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->max(JJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iget-object v4, p1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    add-long/2addr v4, v2

    .line 43
    cmp-long v2, v4, v0

    .line 44
    .line 45
    if-gtz v2, :cond_0

    .line 46
    .line 47
    const-wide/16 v2, 0x1

    .line 48
    .line 49
    iget p1, p1, Lcom/android/calendar/homepage/l0$l;->f:I

    .line 50
    .line 51
    shl-long/2addr v2, p1

    .line 52
    not-long v2, v2

    .line 53
    and-long/2addr p5, v2

    .line 54
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-wide p5
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method static synthetic P(Lcom/android/calendar/homepage/l0;)Lcom/android/calendar/homepage/l0$l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private P0(Ljava/util/ArrayList;JZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/homepage/l0$l;",
            ">;JZ)V"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v8, p4

    .line 4
    .line 5
    new-instance v9, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v10, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    const-wide/16 v11, 0x0

    .line 16
    .line 17
    cmp-long v0, p2, v11

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    move-wide v13, v11

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-wide/from16 v13, p2

    .line 24
    .line 25
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v15

    .line 29
    const/16 v16, 0x0

    .line 30
    .line 31
    move-wide v5, v11

    .line 32
    move/from16 v3, v16

    .line 33
    .line 34
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_7

    .line 39
    .line 40
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    move-object v4, v0

    .line 45
    check-cast v4, Lcom/android/calendar/homepage/l0$l;

    .line 46
    .line 47
    iget-object v0, v4, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/android/calendar/homepage/f;->a(Lcom/android/calendar/common/event/schema/Event;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eq v0, v8, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    if-nez v8, :cond_2

    .line 57
    .line 58
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    move-object/from16 v0, p0

    .line 63
    .line 64
    move-object v1, v4

    .line 65
    move v11, v3

    .line 66
    move-object v12, v4

    .line 67
    move-wide v3, v13

    .line 68
    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/homepage/l0;->O1(Lcom/android/calendar/homepage/l0$l;Ljava/util/Iterator;JJ)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move v11, v3

    .line 74
    move-object v12, v4

    .line 75
    iget-object v0, v12, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 76
    .line 77
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-direct {v7, v0, v1, v5, v6}, Lcom/android/calendar/homepage/l0;->N1(Lcom/android/calendar/common/event/schema/Event;Ljava/util/Iterator;J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/android/calendar/homepage/l0$l;

    .line 106
    .line 107
    iput v11, v1, Lcom/android/calendar/homepage/l0$l;->g:I

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 111
    .line 112
    .line 113
    move/from16 v3, v16

    .line 114
    .line 115
    const-wide/16 v0, 0x0

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_4
    move v3, v11

    .line 119
    :goto_4
    invoke-direct {v7, v0, v1}, Lcom/android/calendar/homepage/l0;->i1(J)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    const/16 v4, 0x40

    .line 124
    .line 125
    if-ne v2, v4, :cond_5

    .line 126
    .line 127
    const/16 v2, 0x3f

    .line 128
    .line 129
    :cond_5
    const-wide/16 v4, 0x1

    .line 130
    .line 131
    shl-long/2addr v4, v2

    .line 132
    or-long v5, v0, v4

    .line 133
    .line 134
    iput v2, v12, Lcom/android/calendar/homepage/l0$l;->f:I

    .line 135
    .line 136
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-ge v3, v0, :cond_6

    .line 147
    .line 148
    move v3, v0

    .line 149
    :cond_6
    const-wide/16 v11, 0x0

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_7
    move v11, v3

    .line 153
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_8

    .line 162
    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Lcom/android/calendar/homepage/l0$l;

    .line 168
    .line 169
    iput v11, v1, Lcom/android/calendar/homepage/l0$l;->g:I

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_8
    return-void
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method

.method private P1()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ge v0, v2, :cond_0

    .line 10
    .line 11
    add-int/2addr v1, v4

    .line 12
    invoke-direct {p0, v1}, Lcom/android/calendar/homepage/l0;->setSelectedHour(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v3}, Lcom/android/calendar/homepage/l0;->setSelectedEvent(Lcom/android/calendar/homepage/l0$l;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 21
    .line 22
    .line 23
    iput-boolean v4, p0, Lcom/android/calendar/homepage/l0;->w1:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v2, p0, Lcom/android/calendar/homepage/l0;->n1:I

    .line 27
    .line 28
    add-int v5, v1, v2

    .line 29
    .line 30
    add-int/lit8 v5, v5, -0x3

    .line 31
    .line 32
    if-le v0, v5, :cond_1

    .line 33
    .line 34
    add-int/2addr v1, v2

    .line 35
    add-int/lit8 v1, v1, -0x3

    .line 36
    .line 37
    invoke-direct {p0, v1}, Lcom/android/calendar/homepage/l0;->setSelectedHour(I)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v3}, Lcom/android/calendar/homepage/l0;->setSelectedEvent(Lcom/android/calendar/homepage/l0$l;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    iput-boolean v4, p0, Lcom/android/calendar/homepage/l0;->w1:Z

    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method static synthetic Q(Lcom/android/calendar/homepage/l0;JJZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/calendar/homepage/l0;->M0(JJZ)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method private Q0(Landroid/view/MotionEvent;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->getTouchArea()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->t1()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/android/calendar/homepage/l0;->M1:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/android/calendar/homepage/l0;->a:Z

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->d:Landroid/os/Handler;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->g:Lcom/android/calendar/homepage/l0$k;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    float-to-int v2, v2

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    float-to-int v3, v3

    .line 40
    iget-object v4, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 41
    .line 42
    iget v5, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 43
    .line 44
    iget v6, p0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 45
    .line 46
    iget v7, p0, Lcom/android/calendar/homepage/l0;->c0:I

    .line 47
    .line 48
    iget-boolean v8, p0, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 49
    .line 50
    iget v9, p0, Lcom/android/calendar/homepage/l0;->h0:I

    .line 51
    .line 52
    iget v10, p0, Lcom/android/calendar/homepage/l0;->i0:I

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    float-to-int v11, v11

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    float-to-int p1, p1

    .line 64
    invoke-direct {p0, v11, p1}, Lcom/android/calendar/homepage/l0;->D1(II)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-direct {p0, v2, v3, v1}, Lcom/android/calendar/homepage/l0;->V1(IIZ)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    iget p1, p0, Lcom/android/calendar/homepage/l0;->O1:I

    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    iget p1, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 81
    .line 82
    if-ne v5, p1, :cond_1

    .line 83
    .line 84
    iget p1, p0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 85
    .line 86
    if-ne v6, p1, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    move v0, v1

    .line 90
    :goto_0
    if-nez v0, :cond_2

    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 97
    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    iput-object p1, p0, Lcom/android/calendar/homepage/l0;->y:Lcom/android/calendar/homepage/l0$l;

    .line 101
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    iput-wide v0, p0, Lcom/android/calendar/homepage/l0;->E:J

    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->I:Ljava/lang/Runnable;

    .line 109
    .line 110
    sget v0, Lcom/android/calendar/homepage/l0;->c3:I

    .line 111
    .line 112
    int-to-long v0, v0

    .line 113
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->h1()V

    .line 118
    .line 119
    .line 120
    :cond_3
    :goto_1
    iput-object v4, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 121
    .line 122
    iput v5, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 123
    .line 124
    iput v6, p0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 125
    .line 126
    iput v7, p0, Lcom/android/calendar/homepage/l0;->c0:I

    .line 127
    .line 128
    iput-boolean v8, p0, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 129
    .line 130
    iput v9, p0, Lcom/android/calendar/homepage/l0;->h0:I

    .line 131
    .line 132
    iput v10, p0, Lcom/android/calendar/homepage/l0;->i0:I

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 135
    .line 136
    .line 137
    return-void
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method static synthetic R(Lcom/android/calendar/homepage/l0;)Landroid/widget/OverScroller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/l0;->b2:Landroid/widget/OverScroller;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private R1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getRrule()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    iput v0, p0, Lcom/android/calendar/homepage/l0;->Q:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v0, p0, Lcom/android/calendar/homepage/l0;->Q:I

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/EventEx;->setRrule(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->M:Lcom/android/calendar/event/j;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->O:Lcom/android/calendar/common/event/schema/Event;

    .line 41
    .line 42
    iget v3, p0, Lcom/android/calendar/homepage/l0;->Q:I

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/j;->o(Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/common/event/schema/Event;IZ)Z

    .line 46
    .line 47
    .line 48
    const-string v0, "drag_event_rectangle"

    .line 49
    .line 50
    invoke-static {v0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method static synthetic S(Lcom/android/calendar/homepage/l0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/homepage/l0;->e2:Z

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private S0()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    sput-boolean v0, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->setFrameDelay(J)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/android/calendar/homepage/l0;->i1:I

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    sget-boolean v0, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 21
    .line 22
    sget v4, Lcom/android/calendar/homepage/l0;->j3:F

    .line 23
    .line 24
    float-to-int v4, v4

    .line 25
    sub-int/2addr v0, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget v0, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 28
    .line 29
    :goto_0
    iput v0, p0, Lcom/android/calendar/homepage/l0;->i1:I

    .line 30
    .line 31
    :cond_1
    iput-boolean v1, p0, Lcom/android/calendar/homepage/l0;->X1:Z

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->U1:Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->V1:Landroid/animation/ObjectAnimator;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->W1:Landroid/animation/ObjectAnimator;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 52
    .line 53
    .line 54
    :cond_4
    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->X1:Z

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->getAllDayAnimator()Landroid/animation/ObjectAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iput-object v4, p0, Lcom/android/calendar/homepage/l0;->U1:Landroid/animation/ObjectAnimator;

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->getAllDayEventAnimator()Landroid/animation/ObjectAnimator;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iput-object v4, p0, Lcom/android/calendar/homepage/l0;->V1:Landroid/animation/ObjectAnimator;

    .line 68
    .line 69
    const/4 v4, 0x2

    .line 70
    new-array v4, v4, [I

    .line 71
    .line 72
    sget-boolean v5, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 73
    .line 74
    const/16 v6, 0x4c

    .line 75
    .line 76
    if-eqz v5, :cond_5

    .line 77
    .line 78
    move v7, v6

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    move v7, v0

    .line 81
    :goto_1
    aput v7, v4, v0

    .line 82
    .line 83
    if-eqz v5, :cond_6

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    move v0, v6

    .line 87
    :goto_2
    aput v0, v4, v1

    .line 88
    .line 89
    const-string v0, "moreAllDayEventsTextAlpha"

    .line 90
    .line 91
    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/android/calendar/homepage/l0;->W1:Landroid/animation/ObjectAnimator;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->U1:Landroid/animation/ObjectAnimator;

    .line 98
    .line 99
    sget-boolean v1, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 100
    .line 101
    const-wide/16 v4, 0xc8

    .line 102
    .line 103
    if-eqz v1, :cond_7

    .line 104
    .line 105
    move-wide v6, v4

    .line 106
    goto :goto_3

    .line 107
    :cond_7
    move-wide v6, v2

    .line 108
    :goto_3
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->U1:Landroid/animation/ObjectAnimator;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->W1:Landroid/animation/ObjectAnimator;

    .line 117
    .line 118
    sget-boolean v1, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 119
    .line 120
    if-eqz v1, :cond_8

    .line 121
    .line 122
    move-wide v6, v2

    .line 123
    goto :goto_4

    .line 124
    :cond_8
    const-wide/16 v6, 0x190

    .line 125
    .line 126
    :goto_4
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->W1:Landroid/animation/ObjectAnimator;

    .line 130
    .line 131
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->W1:Landroid/animation/ObjectAnimator;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->V1:Landroid/animation/ObjectAnimator;

    .line 140
    .line 141
    if-eqz v0, :cond_a

    .line 142
    .line 143
    sget-boolean v1, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 144
    .line 145
    if-eqz v1, :cond_9

    .line 146
    .line 147
    move-wide v2, v4

    .line 148
    :cond_9
    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->V1:Landroid/animation/ObjectAnimator;

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 154
    .line 155
    .line 156
    :cond_a
    return-void
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method private S1(FFFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->A1:Landroid/graphics/Rect;

    .line 2
    .line 3
    float-to-int p1, p1

    .line 4
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 5
    .line 6
    float-to-int p1, p3

    .line 7
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 8
    .line 9
    float-to-int p1, p2

    .line 10
    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    float-to-int p1, p4

    .line 13
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method static synthetic T(Lcom/android/calendar/homepage/l0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/homepage/l0;->e2:Z

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private T0(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->y0()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->t1()V

    .line 11
    .line 12
    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->h1()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, v0, Lcom/android/calendar/homepage/l0;->a:Z

    .line 18
    .line 19
    iget v4, v0, Lcom/android/calendar/homepage/l0;->M1:I

    .line 20
    .line 21
    and-int/lit8 v5, v4, 0x40

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    if-eqz v5, :cond_2

    .line 25
    .line 26
    iput v6, v0, Lcom/android/calendar/homepage/l0;->M1:I

    .line 27
    .line 28
    sget-boolean v2, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    sget-object v2, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v5, "doFling: velocityX "

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    float-to-int v2, v2

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    float-to-int v4, v4

    .line 64
    sub-int/2addr v2, v4

    .line 65
    if-gez v2, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move v3, v6

    .line 69
    :goto_0
    iget v2, v0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 70
    .line 71
    int-to-float v2, v2

    .line 72
    iget v4, v0, Lcom/android/calendar/homepage/l0;->W0:I

    .line 73
    .line 74
    int-to-float v4, v4

    .line 75
    invoke-direct {v0, v3, v2, v4, v1}, Lcom/android/calendar/homepage/l0;->a2(ZFFF)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    iput v6, v0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    and-int/lit8 v1, v4, 0x20

    .line 82
    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    sget-boolean v1, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 86
    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    sget-object v1, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 90
    .line 91
    const-string v2, "doFling: no fling"

    .line 92
    .line 93
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_3
    return-void

    .line 97
    :cond_4
    iput v6, v0, Lcom/android/calendar/homepage/l0;->M1:I

    .line 98
    .line 99
    iput v6, v0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 100
    .line 101
    sget-boolean v1, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 102
    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    sget-object v1, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 106
    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v5, "doFling: mViewStartY"

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget v5, v0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 118
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v5, " velocityY "

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    :cond_5
    iput-boolean v3, v0, Lcom/android/calendar/homepage/l0;->P1:Z

    .line 138
    .line 139
    iget-object v5, v0, Lcom/android/calendar/homepage/l0;->b2:Landroid/widget/OverScroller;

    .line 140
    .line 141
    const/4 v6, 0x0

    .line 142
    iget v7, v0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 143
    .line 144
    const/4 v8, 0x0

    .line 145
    neg-float v1, v2

    .line 146
    float-to-int v9, v1

    .line 147
    const/4 v10, 0x0

    .line 148
    const/4 v11, 0x0

    .line 149
    const/4 v12, 0x0

    .line 150
    iget v13, v0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 151
    .line 152
    iget v15, v0, Lcom/android/calendar/homepage/l0;->f2:I

    .line 153
    .line 154
    move v14, v15

    .line 155
    invoke-virtual/range {v5 .. v15}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 156
    .line 157
    .line 158
    const/4 v1, 0x0

    .line 159
    cmpl-float v4, v2, v1

    .line 160
    .line 161
    if-lez v4, :cond_6

    .line 162
    .line 163
    iget v4, v0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 164
    .line 165
    if-eqz v4, :cond_6

    .line 166
    .line 167
    iput-boolean v3, v0, Lcom/android/calendar/homepage/l0;->e2:Z

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_6
    cmpg-float v1, v2, v1

    .line 171
    .line 172
    if-gez v1, :cond_7

    .line 173
    .line 174
    iget v1, v0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 175
    .line 176
    iget v2, v0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 177
    .line 178
    if-eq v1, v2, :cond_7

    .line 179
    .line 180
    iput-boolean v3, v0, Lcom/android/calendar/homepage/l0;->e2:Z

    .line 181
    .line 182
    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/android/calendar/homepage/l0;->d:Landroid/os/Handler;

    .line 183
    .line 184
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->g:Lcom/android/calendar/homepage/l0$k;

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    .line 188
    .line 189
    return-void
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
.end method

.method private T1(Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/calendar/homepage/l0;->j2:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, v0, Lcom/android/calendar/homepage/l0;->v0:I

    .line 9
    .line 10
    iget v2, v0, Lcom/android/calendar/homepage/l0;->s0:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    move v1, v4

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v1, v3

    .line 19
    :goto_0
    iget v5, v0, Lcom/android/calendar/homepage/l0;->w0:I

    .line 20
    .line 21
    iget v6, v0, Lcom/android/calendar/homepage/l0;->t0:I

    .line 22
    .line 23
    if-eq v5, v6, :cond_2

    .line 24
    .line 25
    move v5, v4

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move v5, v3

    .line 28
    :goto_1
    if-nez v1, :cond_3

    .line 29
    .line 30
    if-nez v5, :cond_3

    .line 31
    .line 32
    iget-object v7, v0, Lcom/android/calendar/homepage/l0;->x0:Lcom/android/calendar/homepage/l0$l;

    .line 33
    .line 34
    iget-object v8, v0, Lcom/android/calendar/homepage/l0;->u0:Lcom/android/calendar/homepage/l0$l;

    .line 35
    .line 36
    if-eq v7, v8, :cond_10

    .line 37
    .line 38
    :cond_3
    iput v2, v0, Lcom/android/calendar/homepage/l0;->v0:I

    .line 39
    .line 40
    iput v6, v0, Lcom/android/calendar/homepage/l0;->w0:I

    .line 41
    .line 42
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->u0:Lcom/android/calendar/homepage/l0$l;

    .line 43
    .line 44
    iput-object v2, v0, Lcom/android/calendar/homepage/l0;->x0:Lcom/android/calendar/homepage/l0$l;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->getSelectedTimeForAccessibility()Lcom/miui/calendar/util/r0;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    const-string v7, "EEEE "

    .line 58
    .line 59
    invoke-virtual {v6, v7}, Lcom/miui/calendar/util/r0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_4
    if-eqz v5, :cond_6

    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->getSelectedTimeForAccessibility()Lcom/miui/calendar/util/r0;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iget-boolean v7, v0, Lcom/android/calendar/homepage/l0;->u1:Z

    .line 73
    .line 74
    if-eqz v7, :cond_5

    .line 75
    .line 76
    const-string v7, "H"

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    const-string v7, "Ka"

    .line 80
    .line 81
    :goto_2
    invoke-virtual {v6, v7}, Lcom/miui/calendar/util/r0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    :cond_6
    if-nez v1, :cond_7

    .line 89
    .line 90
    if-eqz v5, :cond_8

    .line 91
    .line 92
    :cond_7
    const-string v6, ". "

    .line 93
    .line 94
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :cond_8
    if-eqz p1, :cond_e

    .line 98
    .line 99
    iget-object v6, v0, Lcom/android/calendar/homepage/l0;->w:Ljava/lang/String;

    .line 100
    .line 101
    if-nez v6, :cond_9

    .line 102
    .line 103
    iget-object v6, v0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 104
    .line 105
    const v7, 0x7f120605

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    iput-object v6, v0, Lcom/android/calendar/homepage/l0;->w:Ljava/lang/String;

    .line 113
    .line 114
    :cond_9
    iget-object v6, v0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-lez v6, :cond_d

    .line 121
    .line 122
    iget-object v7, v0, Lcom/android/calendar/homepage/l0;->u0:Lcom/android/calendar/homepage/l0$l;

    .line 123
    .line 124
    const-string v8, " "

    .line 125
    .line 126
    const/4 v9, 0x2

    .line 127
    if-nez v7, :cond_b

    .line 128
    .line 129
    iget-object v7, v0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    move v10, v4

    .line 136
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    if-eqz v11, :cond_e

    .line 141
    .line 142
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    check-cast v11, Lcom/android/calendar/homepage/l0$l;

    .line 147
    .line 148
    if-le v6, v4, :cond_a

    .line 149
    .line 150
    sget-object v12, Lcom/android/calendar/homepage/l0;->d3:Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 153
    .line 154
    .line 155
    sget-object v12, Lcom/android/calendar/homepage/l0;->e3:Ljava/util/Formatter;

    .line 156
    .line 157
    iget-object v13, v0, Lcom/android/calendar/homepage/l0;->w:Ljava/lang/String;

    .line 158
    .line 159
    new-array v14, v9, [Ljava/lang/Object;

    .line 160
    .line 161
    add-int/lit8 v15, v10, 0x1

    .line 162
    .line 163
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    aput-object v10, v14, v3

    .line 168
    .line 169
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    aput-object v10, v14, v4

    .line 174
    .line 175
    invoke-virtual {v12, v13, v14}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    move v10, v15

    .line 186
    :cond_a
    iget-object v11, v11, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 187
    .line 188
    invoke-direct {v0, v2, v11}, Lcom/android/calendar/homepage/l0;->u0(Ljava/lang/StringBuilder;Lcom/android/calendar/common/event/schema/Event;)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_b
    if-le v6, v4, :cond_c

    .line 193
    .line 194
    sget-object v7, Lcom/android/calendar/homepage/l0;->d3:Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 197
    .line 198
    .line 199
    sget-object v7, Lcom/android/calendar/homepage/l0;->e3:Ljava/util/Formatter;

    .line 200
    .line 201
    iget-object v10, v0, Lcom/android/calendar/homepage/l0;->w:Ljava/lang/String;

    .line 202
    .line 203
    new-array v9, v9, [Ljava/lang/Object;

    .line 204
    .line 205
    iget-object v11, v0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 206
    .line 207
    iget-object v12, v0, Lcom/android/calendar/homepage/l0;->u0:Lcom/android/calendar/homepage/l0$l;

    .line 208
    .line 209
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    add-int/2addr v11, v4

    .line 214
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    aput-object v11, v9, v3

    .line 219
    .line 220
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    aput-object v3, v9, v4

    .line 225
    .line 226
    invoke-virtual {v7, v10, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    :cond_c
    iget-object v3, v0, Lcom/android/calendar/homepage/l0;->u0:Lcom/android/calendar/homepage/l0$l;

    .line 237
    .line 238
    iget-object v3, v3, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 239
    .line 240
    invoke-direct {v0, v2, v3}, Lcom/android/calendar/homepage/l0;->u0(Ljava/lang/StringBuilder;Lcom/android/calendar/common/event/schema/Event;)V

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_d
    iget-object v3, v0, Lcom/android/calendar/homepage/l0;->l2:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    :cond_e
    :goto_4
    if-nez v1, :cond_f

    .line 250
    .line 251
    if-nez v5, :cond_f

    .line 252
    .line 253
    if-eqz p1, :cond_10

    .line 254
    .line 255
    :cond_f
    const/16 v1, 0x8

    .line 256
    .line 257
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 277
    .line 278
    .line 279
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .line 281
    .line 282
    goto :goto_5

    .line 283
    :catch_0
    sget-object v1, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 284
    .line 285
    const-string v2, "sendAccessibilityEventAsNeeded(): accessibility is not enabled"

    .line 286
    .line 287
    invoke-static {v1, v2}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->v1()V

    .line 291
    .line 292
    .line 293
    :cond_10
    :goto_5
    return-void
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method static synthetic U(Lcom/android/calendar/homepage/l0;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/l0;->g2:F

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private U0(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->h1()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/calendar/homepage/l0;->b1:F

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    cmpl-float v0, v0, v1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    float-to-int v0, v0

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    float-to-int p1, p1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, v0, p1, v1}, Lcom/android/calendar/homepage/l0;->V1(IIZ)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/4 p1, 0x3

    .line 31
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->setSelectionMode(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    .line 38
    .line 39
    .line 40
    return-void
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method static synthetic V(Lcom/android/calendar/homepage/l0;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->g2:F

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private V0(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->y0()V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/android/calendar/homepage/l0;->b:Z

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/android/calendar/homepage/l0;->S1:F

    .line 11
    .line 12
    iput p1, p0, Lcom/android/calendar/homepage/l0;->T1:F

    .line 13
    .line 14
    iput-boolean p2, p0, Lcom/android/calendar/homepage/l0;->b:Z

    .line 15
    .line 16
    :cond_0
    iget p1, p0, Lcom/android/calendar/homepage/l0;->S1:F

    .line 17
    .line 18
    add-float/2addr p1, p3

    .line 19
    iput p1, p0, Lcom/android/calendar/homepage/l0;->S1:F

    .line 20
    .line 21
    iget p3, p0, Lcom/android/calendar/homepage/l0;->T1:F

    .line 22
    .line 23
    add-float/2addr p3, p4

    .line 24
    iput p3, p0, Lcom/android/calendar/homepage/l0;->T1:F

    .line 25
    .line 26
    float-to-int p1, p1

    .line 27
    float-to-int p3, p3

    .line 28
    iget v0, p0, Lcom/android/calendar/homepage/l0;->M1:I

    .line 29
    .line 30
    const/16 v1, 0x20

    .line 31
    .line 32
    const/16 v2, 0x40

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    if-ne v0, v3, :cond_2

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    iget v5, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 46
    .line 47
    iput v5, p0, Lcom/android/calendar/homepage/l0;->Z0:I

    .line 48
    .line 49
    iput p2, p0, Lcom/android/calendar/homepage/l0;->a1:I

    .line 50
    .line 51
    if-le v0, v4, :cond_1

    .line 52
    .line 53
    iput v2, p0, Lcom/android/calendar/homepage/l0;->M1:I

    .line 54
    .line 55
    iput p1, p0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 56
    .line 57
    neg-int p1, p1

    .line 58
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->y1(I)Z

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iput v1, p0, Lcom/android/calendar/homepage/l0;->M1:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    and-int/2addr v0, v2

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    iput p1, p0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    if-lez p1, :cond_3

    .line 73
    .line 74
    move v0, v3

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v0, -0x1

    .line 77
    :goto_0
    iget v2, p0, Lcom/android/calendar/homepage/l0;->a1:I

    .line 78
    .line 79
    if-eq v0, v2, :cond_4

    .line 80
    .line 81
    neg-int p1, p1

    .line 82
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->y1(I)Z

    .line 83
    .line 84
    .line 85
    iput v0, p0, Lcom/android/calendar/homepage/l0;->a1:I

    .line 86
    .line 87
    :cond_4
    :goto_1
    iget p1, p0, Lcom/android/calendar/homepage/l0;->M1:I

    .line 88
    .line 89
    and-int/2addr p1, v1

    .line 90
    if-eqz p1, :cond_9

    .line 91
    .line 92
    iget p1, p0, Lcom/android/calendar/homepage/l0;->Z0:I

    .line 93
    .line 94
    add-int/2addr p3, p1

    .line 95
    iput p3, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 96
    .line 97
    int-to-float p1, p1

    .line 98
    add-float/2addr p1, p4

    .line 99
    float-to-int p1, p1

    .line 100
    if-gez p1, :cond_5

    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->c2:Landroid/widget/EdgeEffect;

    .line 103
    .line 104
    iget p3, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 105
    .line 106
    int-to-float p3, p3

    .line 107
    div-float/2addr p4, p3

    .line 108
    invoke-virtual {p1, p4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->d2:Landroid/widget/EdgeEffect;

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_6

    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->d2:Landroid/widget/EdgeEffect;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    iget p3, p0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 126
    .line 127
    if-le p1, p3, :cond_6

    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->d2:Landroid/widget/EdgeEffect;

    .line 130
    .line 131
    iget p3, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 132
    .line 133
    int-to-float p3, p3

    .line 134
    div-float/2addr p4, p3

    .line 135
    invoke-virtual {p1, p4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->c2:Landroid/widget/EdgeEffect;

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_6

    .line 145
    .line 146
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->c2:Landroid/widget/EdgeEffect;

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 149
    .line 150
    .line 151
    :cond_6
    :goto_2
    iget p1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 152
    .line 153
    if-gez p1, :cond_7

    .line 154
    .line 155
    iput p2, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_7
    iget p2, p0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 159
    .line 160
    if-le p1, p2, :cond_8

    .line 161
    .line 162
    iput p2, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 163
    .line 164
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->I0()V

    .line 165
    .line 166
    .line 167
    :cond_9
    iput-boolean v3, p0, Lcom/android/calendar/homepage/l0;->P1:Z

    .line 168
    .line 169
    iget p1, p0, Lcom/android/calendar/homepage/l0;->v2:I

    .line 170
    .line 171
    const/4 p2, 0x2

    .line 172
    if-ne p1, p2, :cond_a

    .line 173
    .line 174
    iput-boolean v3, p0, Lcom/android/calendar/homepage/l0;->x2:Z

    .line 175
    .line 176
    :cond_a
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->t1()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 180
    .line 181
    .line 182
    return-void
    .line 183
    .line 184
    .line 185
.end method

.method private V1(IIZ)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    sget v4, Lcom/android/calendar/homepage/l0;->B4:I

    .line 10
    .line 11
    if-ge v1, v4, :cond_0

    .line 12
    .line 13
    invoke-direct {v0, v2}, Lcom/android/calendar/homepage/l0;->T1(Z)V

    .line 14
    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    invoke-direct {v0, v3}, Lcom/android/calendar/homepage/l0;->T1(Z)V

    .line 18
    .line 19
    .line 20
    return v3

    .line 21
    :cond_1
    const/4 v4, 0x0

    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    iget-object v4, v0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 25
    .line 26
    iget v5, v0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 27
    .line 28
    iget v6, v0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 29
    .line 30
    iget v7, v0, Lcom/android/calendar/homepage/l0;->c0:I

    .line 31
    .line 32
    iget-boolean v8, v0, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 33
    .line 34
    iget v9, v0, Lcom/android/calendar/homepage/l0;->h0:I

    .line 35
    .line 36
    iget v10, v0, Lcom/android/calendar/homepage/l0;->i0:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move v5, v2

    .line 40
    move v6, v5

    .line 41
    move v7, v6

    .line 42
    move v8, v7

    .line 43
    move v9, v8

    .line 44
    move v10, v9

    .line 45
    :goto_0
    iget v11, v0, Lcom/android/calendar/homepage/l0;->I2:I

    .line 46
    .line 47
    move/from16 v12, p1

    .line 48
    .line 49
    if-ge v12, v11, :cond_3

    .line 50
    .line 51
    move v12, v11

    .line 52
    :cond_3
    iget-boolean v11, v0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 53
    .line 54
    if-eqz v11, :cond_5

    .line 55
    .line 56
    iget v11, v0, Lcom/android/calendar/homepage/l0;->N1:I

    .line 57
    .line 58
    if-ne v11, v3, :cond_4

    .line 59
    .line 60
    iget-object v11, v0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 61
    .line 62
    iget-object v11, v11, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 63
    .line 64
    invoke-virtual {v11}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    invoke-virtual {v11}, Lcom/android/calendar/common/event/schema/EventEx;->isSolarRepeating()Z

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    if-nez v11, :cond_4

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    iget-object v11, v0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 76
    .line 77
    iget-object v11, v11, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 78
    .line 79
    invoke-virtual {v11}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    invoke-virtual {v11}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    goto :goto_2

    .line 88
    :cond_5
    :goto_1
    iget v11, v0, Lcom/android/calendar/homepage/l0;->I2:I

    .line 89
    .line 90
    sub-int v11, v12, v11

    .line 91
    .line 92
    iget v13, v0, Lcom/android/calendar/homepage/l0;->y0:I

    .line 93
    .line 94
    add-int/2addr v13, v3

    .line 95
    div-int/2addr v11, v13

    .line 96
    iget v13, v0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 97
    .line 98
    if-lt v11, v13, :cond_6

    .line 99
    .line 100
    add-int/lit8 v11, v13, -0x1

    .line 101
    .line 102
    :cond_6
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    if-eqz v13, :cond_7

    .line 107
    .line 108
    iget v13, v0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 109
    .line 110
    sub-int/2addr v13, v3

    .line 111
    sub-int v11, v13, v11

    .line 112
    .line 113
    :cond_7
    iget v13, v0, Lcom/android/calendar/homepage/l0;->o:I

    .line 114
    .line 115
    add-int/2addr v11, v13

    .line 116
    :goto_2
    invoke-direct {v0, v11}, Lcom/android/calendar/homepage/l0;->setSelectedDay(I)V

    .line 117
    .line 118
    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->I0()V

    .line 120
    .line 121
    .line 122
    iget v11, v0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 123
    .line 124
    invoke-direct {v0, v11}, Lcom/android/calendar/homepage/l0;->setSelectedHour(I)V

    .line 125
    .line 126
    .line 127
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->getEventHeight()I

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    iget v13, v0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 132
    .line 133
    if-ge v1, v13, :cond_8

    .line 134
    .line 135
    iget-boolean v14, v0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 136
    .line 137
    if-nez v14, :cond_8

    .line 138
    .line 139
    iput-boolean v3, v0, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 140
    .line 141
    move/from16 v18, v9

    .line 142
    .line 143
    move/from16 v17, v10

    .line 144
    .line 145
    goto/16 :goto_9

    .line 146
    .line 147
    :cond_8
    sub-int v13, v1, v13

    .line 148
    .line 149
    iget v14, v0, Lcom/android/calendar/homepage/l0;->o0:I

    .line 150
    .line 151
    sub-int/2addr v13, v14

    .line 152
    iget-boolean v14, v0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 153
    .line 154
    if-eqz v14, :cond_a

    .line 155
    .line 156
    iget v15, v0, Lcom/android/calendar/homepage/l0;->N1:I

    .line 157
    .line 158
    if-ne v15, v3, :cond_9

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_9
    iget v14, v0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 162
    .line 163
    iget v15, v0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 164
    .line 165
    sub-int/2addr v14, v15

    .line 166
    move v15, v2

    .line 167
    goto :goto_4

    .line 168
    :cond_a
    :goto_3
    div-int/lit8 v15, v11, 0x2

    .line 169
    .line 170
    if-eqz v14, :cond_b

    .line 171
    .line 172
    iget-object v14, v0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 173
    .line 174
    iget-object v14, v14, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 175
    .line 176
    invoke-virtual {v14}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    invoke-virtual {v14}, Lcom/android/calendar/common/event/schema/EventEx;->isSolarRepeating()Z

    .line 181
    .line 182
    .line 183
    move-result v14

    .line 184
    if-eqz v14, :cond_b

    .line 185
    .line 186
    sget v14, Lcom/android/calendar/homepage/l0;->h3:I

    .line 187
    .line 188
    sget v16, Lcom/android/calendar/homepage/l0;->x4:I

    .line 189
    .line 190
    add-int v16, v16, v14

    .line 191
    .line 192
    mul-int/lit8 v16, v16, 0x18

    .line 193
    .line 194
    add-int v14, v14, v16

    .line 195
    .line 196
    iget v2, v0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 197
    .line 198
    sub-int/2addr v14, v2

    .line 199
    sub-int/2addr v14, v15

    .line 200
    goto :goto_4

    .line 201
    :cond_b
    iget v2, v0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 202
    .line 203
    iget v14, v0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 204
    .line 205
    sub-int/2addr v2, v14

    .line 206
    add-int/2addr v2, v15

    .line 207
    sget v14, Lcom/android/calendar/homepage/l0;->y4:I

    .line 208
    .line 209
    div-int/lit8 v14, v14, 0x4

    .line 210
    .line 211
    sub-int v14, v2, v14

    .line 212
    .line 213
    :goto_4
    if-ge v13, v15, :cond_c

    .line 214
    .line 215
    move v13, v15

    .line 216
    goto :goto_5

    .line 217
    :cond_c
    if-le v13, v14, :cond_d

    .line 218
    .line 219
    move v13, v14

    .line 220
    :cond_d
    :goto_5
    iget v2, v0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 221
    .line 222
    sget v14, Lcom/android/calendar/homepage/l0;->y4:I

    .line 223
    .line 224
    mul-int v15, v2, v14

    .line 225
    .line 226
    iget v3, v0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 227
    .line 228
    sub-int v17, v13, v3

    .line 229
    .line 230
    add-int v15, v15, v17

    .line 231
    .line 232
    move/from16 v17, v10

    .line 233
    .line 234
    iget-boolean v10, v0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 235
    .line 236
    move/from16 v18, v9

    .line 237
    .line 238
    const/4 v9, 0x2

    .line 239
    if-eqz v10, :cond_11

    .line 240
    .line 241
    iget v2, v0, Lcom/android/calendar/homepage/l0;->N1:I

    .line 242
    .line 243
    const/4 v3, 0x1

    .line 244
    if-ne v2, v3, :cond_e

    .line 245
    .line 246
    div-int/lit8 v2, v11, 0x2

    .line 247
    .line 248
    sub-int/2addr v15, v2

    .line 249
    iput v15, v0, Lcom/android/calendar/homepage/l0;->h0:I

    .line 250
    .line 251
    add-int/2addr v15, v11

    .line 252
    iput v15, v0, Lcom/android/calendar/homepage/l0;->i0:I

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_e
    if-ne v2, v9, :cond_f

    .line 256
    .line 257
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 258
    .line 259
    iget-object v2, v2, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 260
    .line 261
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    iget-object v3, v0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 270
    .line 271
    iget-object v3, v3, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 272
    .line 273
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    sub-int/2addr v2, v3

    .line 282
    mul-int/lit16 v2, v2, 0x5a0

    .line 283
    .line 284
    iget-object v3, v0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 285
    .line 286
    iget-object v3, v3, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 287
    .line 288
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getEndMinute()I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    add-int/2addr v2, v3

    .line 297
    sget v3, Lcom/android/calendar/homepage/l0;->y4:I

    .line 298
    .line 299
    mul-int/2addr v2, v3

    .line 300
    div-int/lit8 v2, v2, 0x3c

    .line 301
    .line 302
    iput v2, v0, Lcom/android/calendar/homepage/l0;->i0:I

    .line 303
    .line 304
    div-int/2addr v3, v9

    .line 305
    sub-int/2addr v2, v3

    .line 306
    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    iput v2, v0, Lcom/android/calendar/homepage/l0;->h0:I

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_f
    const/4 v3, 0x3

    .line 314
    if-ne v2, v3, :cond_10

    .line 315
    .line 316
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 317
    .line 318
    iget v2, v2, Lcom/android/calendar/homepage/l0$l;->d:F

    .line 319
    .line 320
    float-to-int v2, v2

    .line 321
    iput v2, v0, Lcom/android/calendar/homepage/l0;->h0:I

    .line 322
    .line 323
    div-int/2addr v14, v9

    .line 324
    add-int/2addr v2, v14

    .line 325
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    iput v2, v0, Lcom/android/calendar/homepage/l0;->i0:I

    .line 330
    .line 331
    :cond_10
    :goto_6
    iget v2, v0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 332
    .line 333
    iget v3, v0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 334
    .line 335
    sub-int v3, v13, v3

    .line 336
    .line 337
    sget v9, Lcom/android/calendar/homepage/l0;->y4:I

    .line 338
    .line 339
    div-int/lit8 v10, v9, 0x8

    .line 340
    .line 341
    add-int/2addr v3, v10

    .line 342
    div-int/2addr v3, v9

    .line 343
    add-int/2addr v2, v3

    .line 344
    invoke-direct {v0, v2}, Lcom/android/calendar/homepage/l0;->setSelectedHour(I)V

    .line 345
    .line 346
    .line 347
    goto :goto_8

    .line 348
    :cond_11
    iget-boolean v10, v0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 349
    .line 350
    if-eqz v10, :cond_12

    .line 351
    .line 352
    div-int/lit8 v9, v14, 0x2

    .line 353
    .line 354
    sub-int v9, v15, v9

    .line 355
    .line 356
    iput v9, v0, Lcom/android/calendar/homepage/l0;->h0:I

    .line 357
    .line 358
    div-int/lit8 v9, v14, 0x2

    .line 359
    .line 360
    add-int/2addr v15, v9

    .line 361
    iput v15, v0, Lcom/android/calendar/homepage/l0;->i0:I

    .line 362
    .line 363
    sub-int v3, v13, v3

    .line 364
    .line 365
    div-int/lit8 v9, v14, 0x8

    .line 366
    .line 367
    add-int/2addr v3, v9

    .line 368
    div-int/2addr v3, v14

    .line 369
    add-int/2addr v2, v3

    .line 370
    invoke-direct {v0, v2}, Lcom/android/calendar/homepage/l0;->setSelectedHour(I)V

    .line 371
    .line 372
    .line 373
    goto :goto_8

    .line 374
    :cond_12
    if-ge v13, v3, :cond_13

    .line 375
    .line 376
    iget v2, v0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 377
    .line 378
    const/4 v3, 0x1

    .line 379
    sub-int/2addr v2, v3

    .line 380
    invoke-direct {v0, v2}, Lcom/android/calendar/homepage/l0;->setSelectedHour(I)V

    .line 381
    .line 382
    .line 383
    goto :goto_7

    .line 384
    :cond_13
    iget v2, v0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 385
    .line 386
    sub-int v3, v13, v3

    .line 387
    .line 388
    div-int/2addr v3, v14

    .line 389
    add-int/2addr v2, v3

    .line 390
    invoke-direct {v0, v2}, Lcom/android/calendar/homepage/l0;->setSelectedHour(I)V

    .line 391
    .line 392
    .line 393
    sget v2, Lcom/android/calendar/homepage/l0;->y4:I

    .line 394
    .line 395
    div-int/2addr v2, v9

    .line 396
    const/4 v2, 0x0

    .line 397
    iput v2, v0, Lcom/android/calendar/homepage/l0;->c0:I

    .line 398
    .line 399
    :goto_7
    iget v2, v0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 400
    .line 401
    sget v3, Lcom/android/calendar/homepage/l0;->y4:I

    .line 402
    .line 403
    mul-int v9, v2, v3

    .line 404
    .line 405
    iput v9, v0, Lcom/android/calendar/homepage/l0;->h0:I

    .line 406
    .line 407
    const/4 v9, 0x1

    .line 408
    add-int/2addr v2, v9

    .line 409
    mul-int/2addr v2, v3

    .line 410
    iput v2, v0, Lcom/android/calendar/homepage/l0;->i0:I

    .line 411
    .line 412
    :goto_8
    iget v2, v0, Lcom/android/calendar/homepage/l0;->h0:I

    .line 413
    .line 414
    sget v3, Lcom/android/calendar/homepage/l0;->y4:I

    .line 415
    .line 416
    div-int/lit8 v9, v3, 0x8

    .line 417
    .line 418
    add-int/2addr v9, v2

    .line 419
    div-int/2addr v9, v3

    .line 420
    iput v9, v0, Lcom/android/calendar/homepage/l0;->d0:I

    .line 421
    .line 422
    iget v9, v0, Lcom/android/calendar/homepage/l0;->i0:I

    .line 423
    .line 424
    div-int/lit8 v10, v3, 0x8

    .line 425
    .line 426
    add-int/2addr v10, v9

    .line 427
    div-int/2addr v10, v3

    .line 428
    iput v10, v0, Lcom/android/calendar/homepage/l0;->e0:I

    .line 429
    .line 430
    div-int/lit8 v10, v3, 0x8

    .line 431
    .line 432
    add-int/2addr v2, v10

    .line 433
    rem-int/2addr v2, v3

    .line 434
    mul-int/lit8 v2, v2, 0x4

    .line 435
    .line 436
    div-int/2addr v2, v3

    .line 437
    iput v2, v0, Lcom/android/calendar/homepage/l0;->f0:I

    .line 438
    .line 439
    div-int/lit8 v2, v3, 0x8

    .line 440
    .line 441
    add-int/2addr v9, v2

    .line 442
    rem-int/2addr v9, v3

    .line 443
    mul-int/lit8 v9, v9, 0x4

    .line 444
    .line 445
    div-int/2addr v9, v3

    .line 446
    iput v9, v0, Lcom/android/calendar/homepage/l0;->g0:I

    .line 447
    .line 448
    iget v2, v0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 449
    .line 450
    sub-int/2addr v13, v2

    .line 451
    div-int/lit8 v2, v3, 0x8

    .line 452
    .line 453
    add-int/2addr v13, v2

    .line 454
    rem-int/2addr v13, v3

    .line 455
    mul-int/lit8 v13, v13, 0x4

    .line 456
    .line 457
    div-int/2addr v13, v3

    .line 458
    iput v13, v0, Lcom/android/calendar/homepage/l0;->c0:I

    .line 459
    .line 460
    const/4 v2, 0x0

    .line 461
    iput-boolean v2, v0, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 462
    .line 463
    :goto_9
    invoke-direct {v0, v12, v1}, Lcom/android/calendar/homepage/l0;->B1(II)Z

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-nez v2, :cond_14

    .line 468
    .line 469
    iget-boolean v2, v0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 470
    .line 471
    if-nez v2, :cond_14

    .line 472
    .line 473
    invoke-direct {v0, v12, v1}, Lcom/android/calendar/homepage/l0;->j1(II)V

    .line 474
    .line 475
    .line 476
    :cond_14
    if-eqz p3, :cond_15

    .line 477
    .line 478
    iput-object v4, v0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 479
    .line 480
    iput v5, v0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 481
    .line 482
    iput v6, v0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 483
    .line 484
    iput v7, v0, Lcom/android/calendar/homepage/l0;->c0:I

    .line 485
    .line 486
    iput-boolean v8, v0, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 487
    .line 488
    move/from16 v2, v18

    .line 489
    .line 490
    iput v2, v0, Lcom/android/calendar/homepage/l0;->h0:I

    .line 491
    .line 492
    move/from16 v2, v17

    .line 493
    .line 494
    iput v2, v0, Lcom/android/calendar/homepage/l0;->i0:I

    .line 495
    .line 496
    :cond_15
    const/4 v1, 0x1

    .line 497
    invoke-direct {v0, v1}, Lcom/android/calendar/homepage/l0;->T1(Z)V

    .line 498
    .line 499
    .line 500
    return v1
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method

.method static synthetic W(Lcom/android/calendar/homepage/l0;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/l0;->c2:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private W0(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->e1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_f

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->P1:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    float-to-int v0, v0

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    float-to-int p1, p1

    .line 21
    iget v1, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 22
    .line 23
    iget v2, p0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 24
    .line 25
    invoke-direct {p0, v0, p1}, Lcom/android/calendar/homepage/l0;->D1(II)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/calendar/homepage/l0;->B1(II)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->h1()V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->S0()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iget-boolean v3, p0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->t1()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0, v0, p1, v3}, Lcom/android/calendar/homepage/l0;->V1(IIZ)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/16 v4, 0xb

    .line 59
    .line 60
    if-nez v0, :cond_5

    .line 61
    .line 62
    sget v0, Lcom/android/calendar/homepage/l0;->B4:I

    .line 63
    .line 64
    if-ge p1, v0, :cond_4

    .line 65
    .line 66
    iget p1, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {p1, v0}, Lcom/miui/calendar/util/s0;->d(ILjava/util/TimeZone;)Ljava/util/Calendar;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget v0, p0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 83
    .line 84
    invoke-virtual {p1, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/miui/calendar/util/g$a0;

    .line 88
    .line 89
    invoke-direct {v0, p1}, Lcom/miui/calendar/util/g$a0;-><init>(Ljava/util/Calendar;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    return-void

    .line 96
    :cond_5
    iget p1, p0, Lcom/android/calendar/homepage/l0;->O1:I

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    move p1, v0

    .line 102
    goto :goto_0

    .line 103
    :cond_6
    move p1, v3

    .line 104
    :goto_0
    if-nez p1, :cond_7

    .line 105
    .line 106
    iget-boolean p1, p0, Lcom/android/calendar/homepage/l0;->k2:Z

    .line 107
    .line 108
    if-eqz p1, :cond_8

    .line 109
    .line 110
    :cond_7
    iget p1, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 111
    .line 112
    if-ne v1, p1, :cond_8

    .line 113
    .line 114
    iget p1, p0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 115
    .line 116
    if-ne v2, p1, :cond_8

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_8
    move v0, v3

    .line 120
    :goto_1
    const/4 p1, 0x2

    .line 121
    if-eqz v0, :cond_a

    .line 122
    .line 123
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->y:Lcom/android/calendar/homepage/l0$l;

    .line 124
    .line 125
    if-nez v1, :cond_a

    .line 126
    .line 127
    iget-boolean v1, p0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 128
    .line 129
    if-nez v1, :cond_a

    .line 130
    .line 131
    sget-object v1, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 132
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v3, "doSingleTapUp(): click on selected hour slot, pressedSelected:"

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v0, ", mSavedClickedEvent:"

    .line 147
    .line 148
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->y:Lcom/android/calendar/homepage/l0$l;

    .line 152
    .line 153
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, ", mExistingEventLongClicked:"

    .line 157
    .line 158
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 162
    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 174
    .line 175
    if-eqz v0, :cond_9

    .line 176
    .line 177
    return-void

    .line 178
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->setSelectionMode(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->getSelectedHourInMillis()J

    .line 182
    .line 183
    .line 184
    move-result-wide v2

    .line 185
    const-wide/16 v4, 0x0

    .line 186
    .line 187
    const/4 v6, 0x0

    .line 188
    move-object v1, p0

    .line 189
    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/homepage/l0;->M0(JJZ)V

    .line 190
    .line 191
    .line 192
    const-string p1, "double_click_new_event"

    .line 193
    .line 194
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_2

    .line 198
    .line 199
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 200
    .line 201
    if-eqz v0, :cond_d

    .line 202
    .line 203
    sget-object p1, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 204
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v1, "doSingleTapUp(): click on an event, mSelectedEvent:"

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->s0()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->t1()V

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 234
    .line 235
    iget v0, p1, Lcom/android/calendar/homepage/l0$l;->d:F

    .line 236
    .line 237
    iget v1, p1, Lcom/android/calendar/homepage/l0$l;->e:F

    .line 238
    .line 239
    add-float/2addr v0, v1

    .line 240
    const/high16 v1, 0x40000000    # 2.0f

    .line 241
    .line 242
    div-float/2addr v0, v1

    .line 243
    float-to-int v0, v0

    .line 244
    iget-object p1, p1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-nez p1, :cond_b

    .line 251
    .line 252
    iget p1, p0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 253
    .line 254
    iget v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 255
    .line 256
    sub-int/2addr p1, v1

    .line 257
    add-int/2addr v0, p1

    .line 258
    :cond_b
    iput v0, p0, Lcom/android/calendar/homepage/l0;->D:I

    .line 259
    .line 260
    sget p1, Lcom/android/calendar/homepage/l0;->c3:I

    .line 261
    .line 262
    add-int/lit8 p1, p1, 0x32

    .line 263
    .line 264
    int-to-long v0, p1

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 266
    .line 267
    .line 268
    move-result-wide v2

    .line 269
    iget-wide v4, p0, Lcom/android/calendar/homepage/l0;->E:J

    .line 270
    .line 271
    sub-long/2addr v2, v4

    .line 272
    sub-long/2addr v0, v2

    .line 273
    const-wide/16 v2, 0x0

    .line 274
    .line 275
    cmp-long p1, v0, v2

    .line 276
    .line 277
    if-lez p1, :cond_c

    .line 278
    .line 279
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->J:Ljava/lang/Runnable;

    .line 280
    .line 281
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_c
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->J:Ljava/lang/Runnable;

    .line 286
    .line 287
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 288
    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_d
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 292
    .line 293
    const-string v1, "doSingleTapUp(): click on blank area"

    .line 294
    .line 295
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget v0, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 299
    .line 300
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 301
    .line 302
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->s()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-static {v0, v1}, Lcom/miui/calendar/util/s0;->d(ILjava/util/TimeZone;)Ljava/util/Calendar;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    iget v1, p0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 315
    .line 316
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 317
    .line 318
    .line 319
    const/16 v1, 0xc

    .line 320
    .line 321
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 322
    .line 323
    .line 324
    iget-boolean v1, p0, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 325
    .line 326
    if-nez v1, :cond_e

    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    check-cast v1, Ljava/util/Calendar;

    .line 333
    .line 334
    invoke-direct {p0, p1, v1}, Lcom/android/calendar/homepage/l0;->W1(ILjava/util/Calendar;)V

    .line 335
    .line 336
    .line 337
    :cond_e
    iput-boolean v3, p0, Lcom/android/calendar/homepage/l0;->o2:Z

    .line 338
    .line 339
    new-instance p1, Lcom/miui/calendar/util/g$a0;

    .line 340
    .line 341
    invoke-direct {p1, v0}, Lcom/miui/calendar/util/g$a0;-><init>(Ljava/util/Calendar;)V

    .line 342
    .line 343
    .line 344
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 345
    .line 346
    .line 347
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 348
    .line 349
    .line 350
    :cond_f
    :goto_3
    return-void
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method private W1(ILjava/util/Calendar;)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->O1:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->C1()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/miui/calendar/util/g$q;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Lcom/miui/calendar/util/g$q;-><init>(ILjava/util/Calendar;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic X(Lcom/android/calendar/homepage/l0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private X0(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->u1:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->D0:Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/homepage/l0;->Y0(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic Y(Lcom/android/calendar/homepage/l0;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/l0;->d2:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private Y0(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    .line 1
    sget v0, Lcom/android/calendar/homepage/l0;->l4:I

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/android/calendar/homepage/l0;->J3:F

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->n:Landroid/graphics/Typeface;

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->H1:Ljava/lang/String;

    .line 30
    .line 31
    iget v3, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 32
    .line 33
    sget v4, Lcom/android/calendar/homepage/l0;->x4:I

    .line 34
    .line 35
    add-int/2addr v3, v4

    .line 36
    sget v5, Lcom/android/calendar/homepage/l0;->h3:I

    .line 37
    .line 38
    add-int/2addr v3, v5

    .line 39
    sub-int/2addr v3, v0

    .line 40
    add-int/2addr v4, v5

    .line 41
    div-int/2addr v3, v4

    .line 42
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sget v1, Lcom/android/calendar/homepage/l0;->x4:I

    .line 47
    .line 48
    sget v3, Lcom/android/calendar/homepage/l0;->h3:I

    .line 49
    .line 50
    add-int/2addr v1, v3

    .line 51
    mul-int/2addr v1, v0

    .line 52
    iget v3, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 53
    .line 54
    sub-int/2addr v1, v3

    .line 55
    const/16 v3, 0xc

    .line 56
    .line 57
    if-lt v0, v3, :cond_0

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->I1:Ljava/lang/String;

    .line 60
    .line 61
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v4}, Lcom/miui/calendar/util/x0;->z(Landroid/content/Context;)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {p0, v4}, Lcom/android/calendar/homepage/l0;->l1(I)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    iget v5, p0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 72
    .line 73
    add-int/2addr v5, v1

    .line 74
    sget v6, Lcom/android/calendar/homepage/l0;->p3:I

    .line 75
    .line 76
    add-int/2addr v5, v6

    .line 77
    iget v6, p0, Lcom/android/calendar/homepage/l0;->f1:I

    .line 78
    .line 79
    add-int/2addr v5, v6

    .line 80
    iget v6, p0, Lcom/android/calendar/homepage/l0;->g1:I

    .line 81
    .line 82
    add-int/2addr v5, v6

    .line 83
    sget v6, Lcom/android/calendar/homepage/l0;->t3:I

    .line 84
    .line 85
    add-int/2addr v5, v6

    .line 86
    sget v6, Lcom/android/calendar/homepage/l0;->h3:I

    .line 87
    .line 88
    add-int/2addr v5, v6

    .line 89
    iget v6, p0, Lcom/android/calendar/homepage/l0;->N1:I

    .line 90
    .line 91
    const/4 v7, 0x3

    .line 92
    if-ne v6, v7, :cond_1

    .line 93
    .line 94
    iget v6, p0, Lcom/android/calendar/homepage/l0;->e0:I

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    iget v6, p0, Lcom/android/calendar/homepage/l0;->d0:I

    .line 98
    .line 99
    :goto_0
    iget v7, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 100
    .line 101
    add-int/2addr v7, v5

    .line 102
    int-to-float v7, v7

    .line 103
    invoke-virtual {p0, v0, v7, p2}, Lcom/android/calendar/homepage/l0;->E1(IFLandroid/graphics/Paint;)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_2

    .line 108
    .line 109
    sget v7, Lcom/android/calendar/homepage/l0;->x4:I

    .line 110
    .line 111
    sget v8, Lcom/android/calendar/homepage/l0;->h3:I

    .line 112
    .line 113
    add-int/2addr v7, v8

    .line 114
    add-int/2addr v5, v7

    .line 115
    :cond_2
    if-ne v6, v0, :cond_3

    .line 116
    .line 117
    iget-boolean v7, p0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 118
    .line 119
    if-eqz v7, :cond_3

    .line 120
    .line 121
    sget v7, Lcom/android/calendar/homepage/l0;->x4:I

    .line 122
    .line 123
    sget v8, Lcom/android/calendar/homepage/l0;->h3:I

    .line 124
    .line 125
    add-int/2addr v7, v8

    .line 126
    add-int/2addr v5, v7

    .line 127
    :cond_3
    if-ne v6, v0, :cond_4

    .line 128
    .line 129
    const/16 v7, 0xb

    .line 130
    .line 131
    if-ne v0, v7, :cond_4

    .line 132
    .line 133
    iget-boolean v7, p0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 134
    .line 135
    if-nez v7, :cond_5

    .line 136
    .line 137
    :cond_4
    int-to-float v7, v4

    .line 138
    int-to-float v5, v5

    .line 139
    invoke-virtual {p1, v2, v7, v5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    if-ge v0, v3, :cond_7

    .line 143
    .line 144
    iget v2, p0, Lcom/android/calendar/homepage/l0;->n1:I

    .line 145
    .line 146
    add-int/2addr v2, v0

    .line 147
    if-le v2, v3, :cond_7

    .line 148
    .line 149
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->I1:Ljava/lang/String;

    .line 150
    .line 151
    iget v5, p0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 152
    .line 153
    add-int/2addr v5, v1

    .line 154
    rsub-int/lit8 v0, v0, 0xc

    .line 155
    .line 156
    sget v1, Lcom/android/calendar/homepage/l0;->x4:I

    .line 157
    .line 158
    sget v7, Lcom/android/calendar/homepage/l0;->h3:I

    .line 159
    .line 160
    add-int v8, v1, v7

    .line 161
    .line 162
    mul-int/2addr v0, v8

    .line 163
    add-int/2addr v5, v0

    .line 164
    sget v0, Lcom/android/calendar/homepage/l0;->p3:I

    .line 165
    .line 166
    add-int/2addr v5, v0

    .line 167
    iget v0, p0, Lcom/android/calendar/homepage/l0;->f1:I

    .line 168
    .line 169
    add-int/2addr v5, v0

    .line 170
    iget v0, p0, Lcom/android/calendar/homepage/l0;->g1:I

    .line 171
    .line 172
    add-int/2addr v5, v0

    .line 173
    sget v0, Lcom/android/calendar/homepage/l0;->t3:I

    .line 174
    .line 175
    add-int/2addr v5, v0

    .line 176
    add-int/2addr v5, v7

    .line 177
    if-ne v6, v3, :cond_6

    .line 178
    .line 179
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 180
    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    add-int/2addr v1, v7

    .line 184
    add-int/2addr v5, v1

    .line 185
    :cond_6
    int-to-float v0, v4

    .line 186
    int-to-float v1, v5

    .line 187
    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 188
    .line 189
    .line 190
    :cond_7
    return-void
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
.end method

.method private Y1(Landroid/graphics/Rect;Landroid/graphics/Paint;)I
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 6
    .line 7
    neg-float v0, v0

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 13
    .line 14
    add-float/2addr v0, v1

    .line 15
    float-to-double v0, v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    double-to-int v0, v0

    .line 21
    sget v1, Lcom/android/calendar/homepage/l0;->X3:I

    .line 22
    .line 23
    sget v2, Lcom/android/calendar/homepage/l0;->Y3:I

    .line 24
    .line 25
    add-int/2addr v1, v2

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-int v3, v0, v1

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-le v2, v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ge v1, v0, :cond_1

    .line 41
    .line 42
    move v1, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    sub-int/2addr v1, v0

    .line 49
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 50
    .line 51
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    if-le v2, v3, :cond_3

    .line 54
    .line 55
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 56
    .line 57
    iget v6, p1, Landroid/graphics/Rect;->left:I

    .line 58
    .line 59
    if-gt v5, v6, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    sub-int/2addr v2, v3

    .line 63
    sget v5, Lcom/android/calendar/homepage/l0;->X3:I

    .line 64
    .line 65
    sget v6, Lcom/android/calendar/homepage/l0;->Y3:I

    .line 66
    .line 67
    add-int v7, v5, v6

    .line 68
    .line 69
    if-le v2, v7, :cond_4

    .line 70
    .line 71
    if-lez v1, :cond_4

    .line 72
    .line 73
    add-int/2addr v5, v6

    .line 74
    if-gt v1, v5, :cond_4

    .line 75
    .line 76
    sub-int v2, v1, v6

    .line 77
    .line 78
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    add-int/2addr v3, v2

    .line 83
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 84
    .line 85
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    sget v3, Lcom/android/calendar/homepage/l0;->Y3:I

    .line 88
    .line 89
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    sub-int/2addr v2, v1

    .line 94
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    :goto_1
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 98
    .line 99
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 100
    .line 101
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 102
    .line 103
    :cond_4
    :goto_2
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 104
    .line 105
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 106
    .line 107
    sub-int v3, v1, v2

    .line 108
    .line 109
    iget v4, p0, Lcom/android/calendar/homepage/l0;->N0:I

    .line 110
    .line 111
    iget v5, p0, Lcom/android/calendar/homepage/l0;->O0:I

    .line 112
    .line 113
    add-int v6, v4, v5

    .line 114
    .line 115
    if-le v3, v6, :cond_5

    .line 116
    .line 117
    add-int/2addr v2, v4

    .line 118
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 119
    .line 120
    sub-int/2addr v1, v5

    .line 121
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 122
    .line 123
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    int-to-float v1, v1

    .line 128
    int-to-float v0, v0

    .line 129
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    sub-float/2addr v0, p2

    .line 134
    sub-float/2addr v1, v0

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    int-to-float p1, p1

    .line 140
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    float-to-int p1, p1

    .line 145
    return p1
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method static synthetic Z(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->I0()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static synthetic a(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->H1()V

    return-void
.end method

.method static synthetic a0(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->P1()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private a2(ZFFF)Landroid/view/View;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    sub-float v5, v3, v2

    .line 12
    .line 13
    iput v5, v0, Lcom/android/calendar/homepage/l0;->R0:F

    .line 14
    .line 15
    sget-boolean v5, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    sget-object v5, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v7, "switchViews("

    .line 27
    .line 28
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v7, ") O:"

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v7, " Dist:"

    .line 43
    .line 44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v7, v0, Lcom/android/calendar/homepage/l0;->R0:F

    .line 48
    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v7, " velocity:"

    .line 53
    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    div-float/2addr v5, v3

    .line 72
    const/high16 v6, 0x3f800000    # 1.0f

    .line 73
    .line 74
    cmpl-float v7, v5, v6

    .line 75
    .line 76
    if-lez v7, :cond_1

    .line 77
    .line 78
    move v5, v6

    .line 79
    :cond_1
    if-eqz v1, :cond_2

    .line 80
    .line 81
    sub-float/2addr v6, v5

    .line 82
    neg-float v5, v5

    .line 83
    const/high16 v7, -0x40800000    # -1.0f

    .line 84
    .line 85
    move v10, v5

    .line 86
    move v13, v6

    .line 87
    move v6, v7

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    sub-float v7, v5, v6

    .line 90
    .line 91
    move v10, v5

    .line 92
    move v13, v7

    .line 93
    :goto_0
    const/4 v15, 0x0

    .line 94
    new-instance v5, Lcom/miui/calendar/util/r0;

    .line 95
    .line 96
    iget-object v7, v0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 97
    .line 98
    invoke-virtual {v7}, Lcom/miui/calendar/util/r0;->s()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-direct {v5, v7}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 106
    .line 107
    .line 108
    move-result-wide v7

    .line 109
    invoke-virtual {v5, v7, v8}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_3

    .line 117
    .line 118
    xor-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    :cond_3
    if-eqz v1, :cond_4

    .line 121
    .line 122
    invoke-virtual {v5}, Lcom/miui/calendar/util/r0;->q()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    iget v7, v0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 127
    .line 128
    add-int/2addr v1, v7

    .line 129
    invoke-virtual {v5, v1}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    invoke-virtual {v5}, Lcom/miui/calendar/util/r0;->q()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    iget v7, v0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 138
    .line 139
    sub-int/2addr v1, v7

    .line 140
    invoke-virtual {v5, v1}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 141
    .line 142
    .line 143
    :goto_1
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 144
    .line 145
    const/4 v12, 0x1

    .line 146
    const/4 v14, 0x1

    .line 147
    const/16 v16, 0x0

    .line 148
    .line 149
    const/16 v17, 0x0

    .line 150
    .line 151
    const/16 v18, 0x0

    .line 152
    .line 153
    const/16 v19, 0x0

    .line 154
    .line 155
    move-object v11, v1

    .line 156
    invoke-direct/range {v11 .. v19}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 157
    .line 158
    .line 159
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    .line 160
    .line 161
    const/4 v9, 0x1

    .line 162
    const/4 v11, 0x1

    .line 163
    const/4 v13, 0x0

    .line 164
    const/4 v14, 0x0

    .line 165
    const/4 v15, 0x0

    .line 166
    const/16 v16, 0x0

    .line 167
    .line 168
    move-object v8, v7

    .line 169
    move v12, v6

    .line 170
    invoke-direct/range {v8 .. v16}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 171
    .line 172
    .line 173
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    sub-float v2, v3, v2

    .line 178
    .line 179
    invoke-direct {v0, v2, v3, v4}, Lcom/android/calendar/homepage/l0;->x0(FFF)J

    .line 180
    .line 181
    .line 182
    move-result-wide v2

    .line 183
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 184
    .line 185
    .line 186
    iget-object v4, v0, Lcom/android/calendar/homepage/l0;->h2:Lcom/android/calendar/homepage/l0$p;

    .line 187
    .line 188
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 189
    .line 190
    .line 191
    iget-object v4, v0, Lcom/android/calendar/homepage/l0;->h2:Lcom/android/calendar/homepage/l0$p;

    .line 192
    .line 193
    invoke-virtual {v7, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 197
    .line 198
    .line 199
    new-instance v4, Lcom/android/calendar/homepage/l0$n;

    .line 200
    .line 201
    iget-object v6, v0, Lcom/android/calendar/homepage/l0;->Z1:Landroid/widget/ViewSwitcher;

    .line 202
    .line 203
    invoke-direct {v4, v5, v2, v3, v6}, Lcom/android/calendar/homepage/l0$n;-><init>(Lcom/miui/calendar/util/r0;JLandroid/widget/ViewSwitcher;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v7, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 207
    .line 208
    .line 209
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->Z1:Landroid/widget/ViewSwitcher;

    .line 210
    .line 211
    invoke-virtual {v2, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 212
    .line 213
    .line 214
    iget-object v1, v0, Lcom/android/calendar/homepage/l0;->Z1:Landroid/widget/ViewSwitcher;

    .line 215
    .line 216
    invoke-virtual {v1, v7}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lcom/android/calendar/homepage/l0;->Z1:Landroid/widget/ViewSwitcher;

    .line 220
    .line 221
    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Lcom/android/calendar/homepage/l0;

    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/android/calendar/homepage/l0;->B0()V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/android/calendar/homepage/l0;->Z1:Landroid/widget/ViewSwitcher;

    .line 231
    .line 232
    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->showNext()V

    .line 233
    .line 234
    .line 235
    iget-object v1, v0, Lcom/android/calendar/homepage/l0;->Z1:Landroid/widget/ViewSwitcher;

    .line 236
    .line 237
    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    check-cast v1, Lcom/android/calendar/homepage/l0;

    .line 242
    .line 243
    invoke-virtual {v1, v5}, Lcom/android/calendar/homepage/l0;->setSelected(Lcom/miui/calendar/util/r0;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/android/calendar/homepage/l0;->L1()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Lcom/android/calendar/homepage/l0;->Q1()V

    .line 253
    .line 254
    .line 255
    return-object v1
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
.end method

.method static synthetic b(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->A0()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic b0(Lcom/android/calendar/homepage/l0;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/l0;->I0:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private b2(Z)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-object v0, v6, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 4
    .line 5
    iget-object v1, v6, Lcom/android/calendar/homepage/l0;->I0:Landroid/widget/PopupWindow;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8
    .line 9
    .line 10
    const-wide/16 v1, -0x1

    .line 11
    .line 12
    iput-wide v1, v6, Lcom/android/calendar/homepage/l0;->e:J

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->G1()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-wide/32 v2, 0x36ee80

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->getSelectedTimeInMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    add-long v7, v4, v2

    .line 32
    .line 33
    iget-boolean v9, v6, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 34
    .line 35
    move-object/from16 v0, p0

    .line 36
    .line 37
    move-wide v1, v4

    .line 38
    move-wide v3, v7

    .line 39
    move v5, v9

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/homepage/l0;->M0(JJZ)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->s0()V

    .line 45
    .line 46
    .line 47
    iget-object v10, v6, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 52
    .line 53
    .line 54
    move-result-wide v11

    .line 55
    iget-object v1, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v13

    .line 61
    iget-object v0, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v15

    .line 67
    invoke-static/range {v10 .. v16}, Lcom/android/calendar/common/Utils;->L0(Landroid/content/Context;JJJ)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, v6, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const/4 v2, 0x1

    .line 78
    if-ne v1, v2, :cond_4

    .line 79
    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->s0()V

    .line 81
    .line 82
    .line 83
    iget-object v7, v6, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 84
    .line 85
    iget-object v1, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 88
    .line 89
    .line 90
    move-result-wide v8

    .line 91
    iget-object v1, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v10

    .line 97
    iget-object v0, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 100
    .line 101
    .line 102
    move-result-wide v12

    .line 103
    invoke-static/range {v7 .. v13}, Lcom/android/calendar/common/Utils;->L0(Landroid/content/Context;JJJ)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    if-nez v0, :cond_3

    .line 108
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->getSelectedTimeInMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide v4

    .line 113
    add-long v7, v4, v2

    .line 114
    .line 115
    iget-boolean v9, v6, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 116
    .line 117
    move-object/from16 v0, p0

    .line 118
    .line 119
    move-wide v1, v4

    .line 120
    move-wide v3, v7

    .line 121
    move v5, v9

    .line 122
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/homepage/l0;->M0(JJZ)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->s0()V

    .line 127
    .line 128
    .line 129
    iget-object v10, v6, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 130
    .line 131
    iget-object v1, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 134
    .line 135
    .line 136
    move-result-wide v11

    .line 137
    iget-object v1, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 140
    .line 141
    .line 142
    move-result-wide v13

    .line 143
    iget-object v0, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 146
    .line 147
    .line 148
    move-result-wide v15

    .line 149
    invoke-static/range {v10 .. v16}, Lcom/android/calendar/common/Utils;->L0(Landroid/content/Context;JJJ)V

    .line 150
    .line 151
    .line 152
    :cond_4
    :goto_0
    return-void
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method static synthetic c(Lcom/android/calendar/homepage/l0;)[Landroid/text/StaticLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/l0;->V:[Landroid/text/StaticLayout;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic c0(Lcom/android/calendar/homepage/l0;)Lcom/android/calendar/homepage/l0$q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/l0;->k:Lcom/android/calendar/homepage/l0$q;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private c1(Lcom/android/calendar/homepage/l0$l;Landroid/graphics/Canvas;Landroid/graphics/Paint;II)Landroid/graphics/Rect;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getAlpha()I

    .line 8
    .line 9
    .line 10
    move-result v11

    .line 11
    iget-object v12, v0, Lcom/android/calendar/homepage/l0;->z0:Landroid/graphics/Rect;

    .line 12
    .line 13
    iget v2, v1, Lcom/android/calendar/homepage/l0$l;->d:F

    .line 14
    .line 15
    float-to-int v2, v2

    .line 16
    sget v3, Lcom/android/calendar/homepage/l0;->O3:I

    .line 17
    .line 18
    add-int/2addr v2, v3

    .line 19
    move/from16 v3, p4

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    iget v2, v1, Lcom/android/calendar/homepage/l0$l;->e:F

    .line 28
    .line 29
    float-to-int v2, v2

    .line 30
    sget v3, Lcom/android/calendar/homepage/l0;->P3:I

    .line 31
    .line 32
    sub-int/2addr v2, v3

    .line 33
    move/from16 v3, p5

    .line 34
    .line 35
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    iget v2, v1, Lcom/android/calendar/homepage/l0$l;->b:F

    .line 42
    .line 43
    float-to-int v2, v2

    .line 44
    sget v3, Lcom/android/calendar/homepage/l0;->Q3:I

    .line 45
    .line 46
    add-int/2addr v2, v3

    .line 47
    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 48
    .line 49
    iget v2, v1, Lcom/android/calendar/homepage/l0$l;->c:F

    .line 50
    .line 51
    float-to-int v2, v2

    .line 52
    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 53
    .line 54
    iget-object v2, v1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->getSelfAttendeeStatus()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v13, 0x2

    .line 65
    const/4 v14, 0x0

    .line 66
    const/4 v15, 0x1

    .line 67
    if-eq v2, v13, :cond_1

    .line 68
    .line 69
    const/4 v3, 0x3

    .line 70
    if-eq v2, v3, :cond_0

    .line 71
    .line 72
    const/4 v3, 0x4

    .line 73
    if-eq v2, v3, :cond_0

    .line 74
    .line 75
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 76
    .line 77
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->x:Lcom/android/calendar/homepage/l0$l;

    .line 82
    .line 83
    if-eq v1, v2, :cond_1

    .line 84
    .line 85
    sget-object v2, Lcom/android/calendar/homepage/l0;->f3:Landroid/graphics/PathEffect;

    .line 86
    .line 87
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->x:Lcom/android/calendar/homepage/l0$l;

    .line 91
    .line 92
    if-eq v1, v2, :cond_2

    .line 93
    .line 94
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 95
    .line 96
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    .line 98
    .line 99
    move v2, v15

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    :goto_0
    move v2, v14

    .line 102
    :goto_1
    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    .line 108
    .line 109
    iget-object v3, v0, Lcom/android/calendar/homepage/l0;->x:Lcom/android/calendar/homepage/l0$l;

    .line 110
    .line 111
    if-eq v1, v3, :cond_4

    .line 112
    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget-object v3, v1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 121
    .line 122
    sget-object v4, Lcom/android/calendar/common/Utils$DisplayType;->FILL:Lcom/android/calendar/common/Utils$DisplayType;

    .line 123
    .line 124
    invoke-static {v2, v3, v10, v4}, Lcom/android/calendar/common/Utils;->h1(Landroid/content/res/Resources;Lcom/android/calendar/common/event/schema/Event;Landroid/graphics/Paint;Lcom/android/calendar/common/Utils$DisplayType;)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iget-object v3, v1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 133
    .line 134
    sget-object v4, Lcom/android/calendar/common/Utils$DisplayType;->BORDER:Lcom/android/calendar/common/Utils$DisplayType;

    .line 135
    .line 136
    invoke-static {v2, v3, v10, v4}, Lcom/android/calendar/common/Utils;->h1(Landroid/content/res/Resources;Lcom/android/calendar/common/event/schema/Event;Landroid/graphics/Paint;Lcom/android/calendar/common/Utils$DisplayType;)V

    .line 137
    .line 138
    .line 139
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/calendar/homepage/l0;->q1(Lcom/android/calendar/homepage/l0$l;)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 144
    .line 145
    .line 146
    iget v2, v0, Lcom/android/calendar/homepage/l0;->B2:I

    .line 147
    .line 148
    iget v3, v12, Landroid/graphics/Rect;->left:I

    .line 149
    .line 150
    int-to-float v3, v3

    .line 151
    iget v4, v12, Landroid/graphics/Rect;->top:I

    .line 152
    .line 153
    int-to-float v4, v4

    .line 154
    iget v5, v12, Landroid/graphics/Rect;->right:I

    .line 155
    .line 156
    int-to-float v5, v5

    .line 157
    iget v6, v12, Landroid/graphics/Rect;->bottom:I

    .line 158
    .line 159
    int-to-float v6, v6

    .line 160
    int-to-float v8, v2

    .line 161
    move-object/from16 v2, p2

    .line 162
    .line 163
    move v7, v8

    .line 164
    move-object/from16 v9, p3

    .line 165
    .line 166
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 167
    .line 168
    .line 169
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 170
    .line 171
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    .line 173
    .line 174
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 175
    .line 176
    if-ne v2, v1, :cond_8

    .line 177
    .line 178
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->x:Lcom/android/calendar/homepage/l0$l;

    .line 179
    .line 180
    if-eqz v2, :cond_8

    .line 181
    .line 182
    iget v2, v0, Lcom/android/calendar/homepage/l0;->O1:I

    .line 183
    .line 184
    if-ne v2, v15, :cond_5

    .line 185
    .line 186
    iput-object v1, v0, Lcom/android/calendar/homepage/l0;->z1:Lcom/android/calendar/homepage/l0$l;

    .line 187
    .line 188
    sget v14, Lcom/android/calendar/homepage/l0;->g4:I

    .line 189
    .line 190
    :goto_4
    move v2, v14

    .line 191
    move v14, v15

    .line 192
    goto :goto_5

    .line 193
    :cond_5
    if-ne v2, v13, :cond_6

    .line 194
    .line 195
    iput-object v1, v0, Lcom/android/calendar/homepage/l0;->z1:Lcom/android/calendar/homepage/l0$l;

    .line 196
    .line 197
    sget v14, Lcom/android/calendar/homepage/l0;->g4:I

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_6
    move v2, v14

    .line 201
    :goto_5
    if-eqz v14, :cond_7

    .line 202
    .line 203
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    .line 205
    .line 206
    move-object/from16 v2, p2

    .line 207
    .line 208
    invoke-virtual {v2, v12, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 209
    .line 210
    .line 211
    :cond_7
    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 212
    .line 213
    .line 214
    :cond_8
    const/4 v2, 0x0

    .line 215
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 219
    .line 220
    .line 221
    iget v2, v1, Lcom/android/calendar/homepage/l0$l;->d:F

    .line 222
    .line 223
    float-to-int v2, v2

    .line 224
    sget v3, Lcom/android/calendar/homepage/l0;->O3:I

    .line 225
    .line 226
    add-int/2addr v2, v3

    .line 227
    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 228
    .line 229
    iget v2, v1, Lcom/android/calendar/homepage/l0$l;->e:F

    .line 230
    .line 231
    float-to-int v2, v2

    .line 232
    sub-int/2addr v2, v3

    .line 233
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    .line 234
    .line 235
    iget v2, v1, Lcom/android/calendar/homepage/l0$l;->b:F

    .line 236
    .line 237
    float-to-int v2, v2

    .line 238
    add-int/2addr v2, v3

    .line 239
    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 240
    .line 241
    iget v1, v1, Lcom/android/calendar/homepage/l0$l;->c:F

    .line 242
    .line 243
    float-to-int v1, v1

    .line 244
    sget v2, Lcom/android/calendar/homepage/l0;->R3:I

    .line 245
    .line 246
    sub-int/2addr v1, v2

    .line 247
    iput v1, v12, Landroid/graphics/Rect;->right:I

    .line 248
    .line 249
    return-object v12
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
.end method

.method static synthetic d(Lcom/android/calendar/homepage/l0;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/l0;->V:[Landroid/text/StaticLayout;

    .line 2
    .line 3
    return-object p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic d0()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private d1(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIZ)V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1e

    .line 5
    .line 6
    if-le v0, v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v2, 0x7f070311

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    float-to-int v0, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 23
    .line 24
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 25
    .line 26
    sub-int/2addr v2, v3

    .line 27
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 28
    .line 29
    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    sub-int/2addr v3, v4

    .line 32
    add-int/2addr v3, v0

    .line 33
    if-eqz p1, :cond_5

    .line 34
    .line 35
    sget v0, Lcom/android/calendar/homepage/l0;->L3:I

    .line 36
    .line 37
    if-ge v2, v0, :cond_1

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    move v4, v1

    .line 45
    move v5, v4

    .line 46
    :goto_1
    if-ge v4, v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineBottom(I)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-gt v6, v3, :cond_2

    .line 53
    .line 54
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    move v5, v6

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    if-eqz v5, :cond_5

    .line 59
    .line 60
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    if-gt v0, p5, :cond_5

    .line 63
    .line 64
    add-int/2addr v0, v5

    .line 65
    if-ge v0, p4, :cond_3

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 69
    .line 70
    .line 71
    if-eqz p6, :cond_4

    .line 72
    .line 73
    iget p4, p2, Landroid/graphics/Rect;->bottom:I

    .line 74
    .line 75
    iget p5, p2, Landroid/graphics/Rect;->top:I

    .line 76
    .line 77
    sub-int/2addr p4, p5

    .line 78
    sub-int/2addr p4, v5

    .line 79
    div-int/lit8 p4, p4, 0x2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    move p4, v1

    .line 83
    :goto_2
    iget p5, p2, Landroid/graphics/Rect;->left:I

    .line 84
    .line 85
    int-to-float p5, p5

    .line 86
    iget p6, p2, Landroid/graphics/Rect;->top:I

    .line 87
    .line 88
    add-int/2addr p6, p4

    .line 89
    int-to-float p4, p6

    .line 90
    invoke-virtual {p3, p5, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    .line 92
    .line 93
    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 94
    .line 95
    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 96
    .line 97
    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 98
    .line 99
    iput v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 100
    .line 101
    invoke-virtual {p3, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 108
    .line 109
    .line 110
    :cond_5
    :goto_3
    return-void
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
.end method

.method private d2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lcom/android/calendar/homepage/l0;->o0:I

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget v2, p0, Lcom/android/calendar/homepage/l0;->N1:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, v3, :cond_1

    .line 13
    .line 14
    iget v0, v0, Lcom/android/calendar/homepage/l0$l;->e:F

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->getEventHeight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    sub-float/2addr v0, v2

    .line 22
    iget v2, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x14

    .line 25
    .line 26
    int-to-float v2, v2

    .line 27
    cmpg-float v0, v0, v2

    .line 28
    .line 29
    if-gez v0, :cond_1

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->k2()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/android/calendar/homepage/l0;->o0:I

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 39
    .line 40
    iget v2, p0, Lcom/android/calendar/homepage/l0;->n0:I

    .line 41
    .line 42
    add-int/2addr v0, v2

    .line 43
    iget v2, p0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 44
    .line 45
    sub-int/2addr v0, v2

    .line 46
    iget v2, p0, Lcom/android/calendar/homepage/l0;->N1:I

    .line 47
    .line 48
    const/4 v4, 0x2

    .line 49
    if-ne v2, v3, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 52
    .line 53
    iget v1, v1, Lcom/android/calendar/homepage/l0$l;->d:F

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->getEventHeight()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    div-int/2addr v2, v4

    .line 60
    int-to-float v2, v2

    .line 61
    add-float/2addr v1, v2

    .line 62
    :goto_0
    float-to-int v1, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    if-ne v2, v4, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 67
    .line 68
    iget v1, v1, Lcom/android/calendar/homepage/l0$l;->d:F

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v3, 0x3

    .line 72
    if-ne v2, v3, :cond_4

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 75
    .line 76
    iget v1, v1, Lcom/android/calendar/homepage/l0$l;->e:F

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    :goto_1
    sub-int/2addr v0, v1

    .line 80
    iput v0, p0, Lcom/android/calendar/homepage/l0;->o0:I

    .line 81
    .line 82
    return-void
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method static synthetic e(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->H0()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic e0(Lcom/android/calendar/homepage/l0;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->W0(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private e2()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "updateEditingEvent()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->getEditingEventIndex()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/calendar/homepage/l0$l;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getStartMinute()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    sget v1, Lcom/android/calendar/homepage/l0;->y4:I

    .line 38
    .line 39
    mul-int/2addr v0, v1

    .line 40
    div-int/lit8 v0, v0, 0x3c

    .line 41
    .line 42
    int-to-float v0, v0

    .line 43
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    sub-int/2addr v1, v2

    .line 68
    mul-int/lit16 v1, v1, 0x5a0

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->getEndMinute()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    add-int/2addr v1, v2

    .line 83
    sget v2, Lcom/android/calendar/homepage/l0;->y4:I

    .line 84
    .line 85
    mul-int/2addr v1, v2

    .line 86
    div-int/lit8 v1, v1, 0x3c

    .line 87
    .line 88
    int-to-float v1, v1

    .line 89
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 90
    .line 91
    iput v0, v2, Lcom/android/calendar/homepage/l0$l;->d:F

    .line 92
    .line 93
    iput v1, v2, Lcom/android/calendar/homepage/l0$l;->e:F

    .line 94
    .line 95
    const/4 v0, 0x1

    .line 96
    return v0
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method static synthetic f(Lcom/android/calendar/homepage/l0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/homepage/l0;->w1:Z

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic f0(Lcom/android/calendar/homepage/l0;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->U0(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private f2()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->d0:I

    .line 2
    .line 3
    sget v1, Lcom/android/calendar/homepage/l0;->y4:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    iget v2, p0, Lcom/android/calendar/homepage/l0;->f0:I

    .line 7
    .line 8
    mul-int/2addr v2, v1

    .line 9
    div-int/lit8 v2, v2, 0x4

    .line 10
    .line 11
    add-int/2addr v0, v2

    .line 12
    iput v0, p0, Lcom/android/calendar/homepage/l0;->j0:I

    .line 13
    .line 14
    iget v0, p0, Lcom/android/calendar/homepage/l0;->e0:I

    .line 15
    .line 16
    mul-int/2addr v0, v1

    .line 17
    iget v2, p0, Lcom/android/calendar/homepage/l0;->g0:I

    .line 18
    .line 19
    mul-int/2addr v2, v1

    .line 20
    div-int/lit8 v2, v2, 0x4

    .line 21
    .line 22
    add-int/2addr v0, v2

    .line 23
    iput v0, p0, Lcom/android/calendar/homepage/l0;->k0:I

    .line 24
    .line 25
    return-void
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method static synthetic g(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->K1()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic g0(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->h1()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private g1(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->O2:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, ","

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gtz p2, :cond_0

    .line 18
    .line 19
    const-string p1, ""

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-le v0, p2, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :cond_1
    :goto_0
    const/16 p2, 0xa

    .line 30
    .line 31
    const/16 v0, 0x20

    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private g2()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget v1, p0, Lcom/android/calendar/homepage/l0;->O1:I

    .line 6
    .line 7
    if-eqz v1, :cond_8

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    iget-wide v1, p0, Lcom/android/calendar/homepage/l0;->e:J

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    cmp-long v0, v1, v3

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p0, Lcom/android/calendar/homepage/l0;->e:J

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->d:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->K0:Lcom/android/calendar/homepage/l0$m;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->J0:Landroid/view/View;

    .line 49
    .line 50
    const v2, 0x7f0a027e

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->J0:Landroid/view/View;

    .line 67
    .line 68
    const v2, 0x7f0a04d0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/widget/ImageView;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->hasAlarm()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/4 v3, 0x0

    .line 86
    const/16 v4, 0x8

    .line 87
    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    move v2, v3

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move v2, v4

    .line 93
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->J0:Landroid/view/View;

    .line 97
    .line 98
    const v2, 0x7f0a04e2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Landroid/widget/ImageView;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->isSolarRepeating()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    move v2, v3

    .line 118
    goto :goto_1

    .line 119
    :cond_3
    move v2, v4

    .line 120
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_4

    .line 128
    .line 129
    const v1, 0x82012

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    const v1, 0x81413

    .line 134
    .line 135
    .line 136
    :goto_2
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 137
    .line 138
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_5

    .line 143
    .line 144
    or-int/lit16 v1, v1, 0x80

    .line 145
    .line 146
    :cond_5
    move v10, v1

    .line 147
    iget-object v5, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 150
    .line 151
    .line 152
    move-result-wide v6

    .line 153
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 154
    .line 155
    .line 156
    move-result-wide v8

    .line 157
    invoke-static/range {v5 .. v10}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->J0:Landroid/view/View;

    .line 162
    .line 163
    const v5, 0x7f0a061f

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    check-cast v2, Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->J0:Landroid/view/View;

    .line 176
    .line 177
    const v2, 0x7f0a06f0

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Landroid/widget/TextView;

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-eqz v2, :cond_6

    .line 195
    .line 196
    move v3, v4

    .line 197
    :cond_6
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    if-nez v2, :cond_7

    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->I0:Landroid/widget/PopupWindow;

    .line 210
    .line 211
    const/16 v1, 0x53

    .line 212
    .line 213
    iget v2, p0, Lcom/android/calendar/homepage/l0;->I2:I

    .line 214
    .line 215
    const/4 v3, 0x5

    .line 216
    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->d:Landroid/os/Handler;

    .line 220
    .line 221
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->K0:Lcom/android/calendar/homepage/l0$m;

    .line 222
    .line 223
    const-wide/16 v2, 0xbb8

    .line 224
    .line 225
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->I0:Landroid/widget/PopupWindow;

    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 232
    .line 233
    .line 234
    return-void
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

.method private getAllDayAnimator()Landroid/animation/ObjectAnimator;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 2
    .line 3
    sget v1, Lcom/android/calendar/homepage/l0;->B4:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    sget v1, Lcom/android/calendar/homepage/l0;->l3:I

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    iget v1, p0, Lcom/android/calendar/homepage/l0;->k1:I

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    sget v2, Lcom/android/calendar/homepage/l0;->j3:F

    .line 13
    .line 14
    mul-float/2addr v1, v2

    .line 15
    float-to-int v1, v1

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v1, p0, Lcom/android/calendar/homepage/l0;->i1:I

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget v1, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 26
    .line 27
    :goto_0
    sget-boolean v2, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sget v0, Lcom/android/calendar/homepage/l0;->k3:I

    .line 33
    .line 34
    int-to-float v0, v0

    .line 35
    sget v2, Lcom/android/calendar/homepage/l0;->j3:F

    .line 36
    .line 37
    sub-float/2addr v0, v2

    .line 38
    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    .line 40
    sub-float/2addr v0, v2

    .line 41
    float-to-int v0, v0

    .line 42
    :goto_1
    const/4 v2, 0x2

    .line 43
    new-array v2, v2, [I

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    aput v1, v2, v3

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    aput v0, v2, v1

    .line 50
    .line 51
    const-string v0, "animateDayHeight"

    .line 52
    .line 53
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-wide/16 v1, 0x190

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/android/calendar/homepage/l0$e;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/android/calendar/homepage/l0$e;-><init>(Lcom/android/calendar/homepage/l0;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    .line 69
    .line 70
    return-object v0
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private getAllDayEventAnimator()Landroid/animation/ObjectAnimator;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 2
    .line 3
    sget v1, Lcom/android/calendar/homepage/l0;->B4:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    sget v1, Lcom/android/calendar/homepage/l0;->l3:I

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    iget v1, p0, Lcom/android/calendar/homepage/l0;->k1:I

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    sget v2, Lcom/android/calendar/homepage/l0;->j3:F

    .line 13
    .line 14
    mul-float/2addr v1, v2

    .line 15
    float-to-int v1, v1

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v1, p0, Lcom/android/calendar/homepage/l0;->k1:I

    .line 21
    .line 22
    div-int/2addr v0, v1

    .line 23
    iget v1, p0, Lcom/android/calendar/homepage/l0;->j1:I

    .line 24
    .line 25
    sget-boolean v2, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget v0, Lcom/android/calendar/homepage/l0;->j3:F

    .line 31
    .line 32
    float-to-int v0, v0

    .line 33
    :goto_0
    if-ne v1, v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    return-object v0

    .line 37
    :cond_1
    const/4 v2, 0x2

    .line 38
    new-array v2, v2, [I

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    aput v1, v2, v3

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    aput v0, v2, v1

    .line 45
    .line 46
    const-string v0, "animateDayEventHeight"

    .line 47
    .line 48
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-wide/16 v1, 0x190

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 55
    .line 56
    .line 57
    return-object v0
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private getCurrentSelectionPosition()Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 7
    .line 8
    sget v2, Lcom/android/calendar/homepage/l0;->x4:I

    .line 9
    .line 10
    sget v3, Lcom/android/calendar/homepage/l0;->h3:I

    .line 11
    .line 12
    add-int v4, v2, v3

    .line 13
    .line 14
    mul-int/2addr v1, v4

    .line 15
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    add-int/2addr v1, v3

    .line 19
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 20
    .line 21
    iget v1, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 22
    .line 23
    iget v2, p0, Lcom/android/calendar/homepage/l0;->o:I

    .line 24
    .line 25
    sub-int/2addr v1, v2

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 41
    .line 42
    return-object v0
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private getEditingEventIndex()I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_3

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/calendar/homepage/l0$l;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iget-object v4, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 25
    .line 26
    iget-object v4, v4, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    cmp-long v2, v2, v4

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iget-wide v4, p0, Lcom/android/calendar/homepage/l0;->T:J

    .line 41
    .line 42
    cmp-long v2, v2, v4

    .line 43
    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->isSolarRepeating()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-ne v1, v2, :cond_1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    :goto_1
    return v0

    .line 87
    :cond_3
    const/4 v0, -0x1

    .line 88
    return v0
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method private getEventHeight()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/android/calendar/homepage/l0;->y4:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    sub-int/2addr v0, v1

    .line 33
    mul-int/lit16 v0, v0, 0x5a0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getEndMinute()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getStartMinute()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    sub-int/2addr v0, v1

    .line 61
    sget v1, Lcom/android/calendar/homepage/l0;->y4:I

    .line 62
    .line 63
    mul-int/2addr v0, v1

    .line 64
    div-int/lit8 v0, v0, 0x3c

    .line 65
    .line 66
    return v0
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private getTouchArea()I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/calendar/homepage/l0$l;->d:F

    .line 4
    .line 5
    float-to-int v1, v1

    .line 6
    iget v2, v0, Lcom/android/calendar/homepage/l0$l;->e:F

    .line 7
    .line 8
    float-to-int v2, v2

    .line 9
    iget-object v0, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v3, p0, Lcom/android/calendar/homepage/l0;->o:I

    .line 20
    .line 21
    sub-int/2addr v0, v3

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    add-int/2addr v3, v4

    .line 28
    add-int/2addr v0, v4

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget v5, p0, Lcom/android/calendar/homepage/l0;->m0:I

    .line 34
    .line 35
    iget v6, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 36
    .line 37
    add-int/2addr v5, v6

    .line 38
    iget v6, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 39
    .line 40
    sub-int/2addr v5, v6

    .line 41
    iget v6, p0, Lcom/android/calendar/homepage/l0;->l0:I

    .line 42
    .line 43
    invoke-direct {p0, v6, v5, v0, v1}, Lcom/android/calendar/homepage/l0;->K0(IIII)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    iget v7, p0, Lcom/android/calendar/homepage/l0;->l0:I

    .line 48
    .line 49
    invoke-direct {p0, v7, v5, v3, v2}, Lcom/android/calendar/homepage/l0;->K0(IIII)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    const/16 v8, 0x32

    .line 54
    .line 55
    if-ge v6, v8, :cond_0

    .line 56
    .line 57
    const/4 v0, 0x2

    .line 58
    return v0

    .line 59
    :cond_0
    if-ge v7, v8, :cond_1

    .line 60
    .line 61
    const/4 v0, 0x3

    .line 62
    return v0

    .line 63
    :cond_1
    iget v6, p0, Lcom/android/calendar/homepage/l0;->l0:I

    .line 64
    .line 65
    if-lt v6, v3, :cond_2

    .line 66
    .line 67
    if-gt v6, v0, :cond_2

    .line 68
    .line 69
    if-lt v5, v1, :cond_2

    .line 70
    .line 71
    if-gt v5, v2, :cond_2

    .line 72
    .line 73
    return v4

    .line 74
    :cond_2
    const/4 v0, 0x0

    .line 75
    return v0
.end method

.method static synthetic h(Lcom/android/calendar/homepage/l0;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/l0;->H:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic h0(Lcom/android/calendar/homepage/l0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/homepage/l0;->Y1:Z

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private h1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->J:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->I:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/calendar/homepage/l0;->x:Lcom/android/calendar/homepage/l0$l;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/calendar/homepage/l0;->y:Lcom/android/calendar/homepage/l0$l;

    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private h2(I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->getEventHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 6
    .line 7
    int-to-float p1, p1

    .line 8
    const v2, 0x3e4ccccd    # 0.2f

    .line 9
    .line 10
    .line 11
    mul-float/2addr p1, v2

    .line 12
    sget v2, Lcom/android/calendar/homepage/l0;->x4:I

    .line 13
    .line 14
    int-to-float v3, v2

    .line 15
    mul-float/2addr v3, p1

    .line 16
    float-to-int v3, v3

    .line 17
    add-int/2addr v1, v3

    .line 18
    iput v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 19
    .line 20
    iget-boolean v3, p0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    const/4 v5, 0x2

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget v6, p0, Lcom/android/calendar/homepage/l0;->N1:I

    .line 27
    .line 28
    if-eq v6, v4, :cond_0

    .line 29
    .line 30
    if-ne v6, v5, :cond_1

    .line 31
    .line 32
    :cond_0
    iget v6, p0, Lcom/android/calendar/homepage/l0;->h0:I

    .line 33
    .line 34
    int-to-float v7, v2

    .line 35
    mul-float/2addr v7, p1

    .line 36
    float-to-int v7, v7

    .line 37
    add-int/2addr v6, v7

    .line 38
    iput v6, p0, Lcom/android/calendar/homepage/l0;->h0:I

    .line 39
    .line 40
    :cond_1
    if-eqz v3, :cond_2

    .line 41
    .line 42
    iget v3, p0, Lcom/android/calendar/homepage/l0;->N1:I

    .line 43
    .line 44
    if-eq v3, v4, :cond_2

    .line 45
    .line 46
    const/4 v4, 0x3

    .line 47
    if-ne v3, v4, :cond_3

    .line 48
    .line 49
    :cond_2
    iget v3, p0, Lcom/android/calendar/homepage/l0;->i0:I

    .line 50
    .line 51
    int-to-float v2, v2

    .line 52
    mul-float/2addr p1, v2

    .line 53
    float-to-int p1, p1

    .line 54
    add-int/2addr v3, p1

    .line 55
    iput v3, p0, Lcom/android/calendar/homepage/l0;->i0:I

    .line 56
    .line 57
    :cond_3
    const/4 p1, 0x0

    .line 58
    if-gez v1, :cond_4

    .line 59
    .line 60
    iput p1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 61
    .line 62
    iget v1, p0, Lcom/android/calendar/homepage/l0;->l0:I

    .line 63
    .line 64
    div-int/2addr v0, v5

    .line 65
    iget v2, p0, Lcom/android/calendar/homepage/l0;->o0:I

    .line 66
    .line 67
    add-int/2addr v0, v2

    .line 68
    invoke-direct {p0, v1, v0, p1}, Lcom/android/calendar/homepage/l0;->V1(IIZ)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    iget v2, p0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 73
    .line 74
    if-le v1, v2, :cond_5

    .line 75
    .line 76
    iput v2, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 77
    .line 78
    iget v1, p0, Lcom/android/calendar/homepage/l0;->l0:I

    .line 79
    .line 80
    iget v2, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 81
    .line 82
    iget v3, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 83
    .line 84
    add-int/2addr v2, v3

    .line 85
    div-int/2addr v0, v5

    .line 86
    add-int/2addr v2, v0

    .line 87
    sget v0, Lcom/android/calendar/homepage/l0;->y4:I

    .line 88
    .line 89
    div-int/lit8 v0, v0, 0x4

    .line 90
    .line 91
    sub-int/2addr v2, v0

    .line 92
    iget v0, p0, Lcom/android/calendar/homepage/l0;->m0:I

    .line 93
    .line 94
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-direct {p0, v1, v0, p1}, Lcom/android/calendar/homepage/l0;->V1(IIZ)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    iget v0, p0, Lcom/android/calendar/homepage/l0;->l0:I

    .line 103
    .line 104
    iget v1, p0, Lcom/android/calendar/homepage/l0;->m0:I

    .line 105
    .line 106
    invoke-direct {p0, v0, v1, p1}, Lcom/android/calendar/homepage/l0;->V1(IIZ)Z

    .line 107
    .line 108
    .line 109
    :goto_0
    return-void
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method static synthetic i(Lcom/android/calendar/homepage/l0;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/l0;->H:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    return-object p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic i0(Lcom/android/calendar/homepage/l0;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/homepage/l0;->V0(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
.end method

.method private i1(J)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic j(Lcom/android/calendar/homepage/l0;)Lcom/miui/calendar/util/c1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/l0;->p2:Lcom/miui/calendar/util/c1;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic j0(Lcom/android/calendar/homepage/l0;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/homepage/l0;->T0(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
.end method

.method private j1(II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v8, v0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 8
    .line 9
    iget v9, v0, Lcom/android/calendar/homepage/l0;->y0:I

    .line 10
    .line 11
    iget-object v10, v0, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v11

    .line 17
    iget v3, v0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 18
    .line 19
    iget v4, v0, Lcom/android/calendar/homepage/l0;->o:I

    .line 20
    .line 21
    sub-int/2addr v3, v4

    .line 22
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    iget v4, v0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 29
    .line 30
    add-int/lit8 v4, v4, -0x1

    .line 31
    .line 32
    sub-int/2addr v4, v3

    .line 33
    invoke-virtual {v0, v4}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    :goto_0
    move v12, v3

    .line 43
    const/4 v13, 0x0

    .line 44
    const/4 v14, 0x0

    .line 45
    invoke-direct {v0, v14}, Lcom/android/calendar/homepage/l0;->setSelectedEvent(Lcom/android/calendar/homepage/l0$l;)V

    .line 46
    .line 47
    .line 48
    iget-object v3, v0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    iget-boolean v3, v0, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 54
    .line 55
    if-eqz v3, :cond_9

    .line 56
    .line 57
    const/high16 v1, 0x41200000    # 10.0f

    .line 58
    .line 59
    iget v3, v0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 60
    .line 61
    int-to-float v3, v3

    .line 62
    sget v4, Lcom/android/calendar/homepage/l0;->B4:I

    .line 63
    .line 64
    sget v5, Lcom/android/calendar/homepage/l0;->m3:I

    .line 65
    .line 66
    add-int/2addr v4, v5

    .line 67
    iget v5, v0, Lcom/android/calendar/homepage/l0;->l1:I

    .line 68
    .line 69
    iget v6, v0, Lcom/android/calendar/homepage/l0;->k1:I

    .line 70
    .line 71
    if-le v6, v5, :cond_1

    .line 72
    .line 73
    add-int/lit8 v5, v5, -0x1

    .line 74
    .line 75
    :cond_1
    iget-object v6, v0, Lcom/android/calendar/homepage/l0;->U:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    const/4 v15, 0x0

    .line 82
    :goto_1
    if-ge v15, v7, :cond_8

    .line 83
    .line 84
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    check-cast v8, Lcom/android/calendar/homepage/l0$l;

    .line 89
    .line 90
    iget-object v9, v8, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 91
    .line 92
    invoke-static {v9}, Lcom/android/calendar/homepage/f;->a(Lcom/android/calendar/common/event/schema/Event;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_7

    .line 97
    .line 98
    sget-boolean v9, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 99
    .line 100
    if-nez v9, :cond_2

    .line 101
    .line 102
    iget v9, v8, Lcom/android/calendar/homepage/l0$l;->f:I

    .line 103
    .line 104
    if-lt v9, v5, :cond_2

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_2
    iget-object v9, v8, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 108
    .line 109
    invoke-virtual {v9}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-virtual {v9}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    iget v10, v0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 118
    .line 119
    if-gt v9, v10, :cond_7

    .line 120
    .line 121
    iget-object v9, v8, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 122
    .line 123
    invoke-virtual {v9}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-virtual {v9}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    iget v10, v0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 132
    .line 133
    if-lt v9, v10, :cond_7

    .line 134
    .line 135
    sget-boolean v9, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 136
    .line 137
    if-eqz v9, :cond_3

    .line 138
    .line 139
    iget v9, v0, Lcom/android/calendar/homepage/l0;->k1:I

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    iget v9, v0, Lcom/android/calendar/homepage/l0;->l1:I

    .line 143
    .line 144
    :goto_2
    int-to-float v9, v9

    .line 145
    div-float v9, v3, v9

    .line 146
    .line 147
    sget v10, Lcom/android/calendar/homepage/l0;->o3:I

    .line 148
    .line 149
    int-to-float v11, v10

    .line 150
    cmpl-float v11, v9, v11

    .line 151
    .line 152
    if-lez v11, :cond_4

    .line 153
    .line 154
    int-to-float v9, v10

    .line 155
    :cond_4
    int-to-float v10, v4

    .line 156
    iget v11, v8, Lcom/android/calendar/homepage/l0$l;->f:I

    .line 157
    .line 158
    int-to-float v11, v11

    .line 159
    mul-float/2addr v11, v9

    .line 160
    add-float/2addr v10, v11

    .line 161
    add-float/2addr v9, v10

    .line 162
    int-to-float v11, v2

    .line 163
    cmpg-float v12, v10, v11

    .line 164
    .line 165
    if-gez v12, :cond_5

    .line 166
    .line 167
    cmpl-float v12, v9, v11

    .line 168
    .line 169
    if-lez v12, :cond_5

    .line 170
    .line 171
    iget-object v1, v0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-object v14, v8

    .line 177
    goto :goto_5

    .line 178
    :cond_5
    cmpl-float v12, v10, v11

    .line 179
    .line 180
    if-ltz v12, :cond_6

    .line 181
    .line 182
    sub-float/2addr v10, v11

    .line 183
    goto :goto_3

    .line 184
    :cond_6
    sub-float v10, v11, v9

    .line 185
    .line 186
    :goto_3
    cmpg-float v9, v10, v1

    .line 187
    .line 188
    if-gez v9, :cond_7

    .line 189
    .line 190
    move-object v14, v8

    .line 191
    move v1, v10

    .line 192
    :cond_7
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_8
    :goto_5
    invoke-direct {v0, v14}, Lcom/android/calendar/homepage/l0;->setSelectedEvent(Lcom/android/calendar/homepage/l0$l;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_9
    iget v3, v0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 200
    .line 201
    iget v4, v0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 202
    .line 203
    sub-int/2addr v3, v4

    .line 204
    add-int v7, v2, v3

    .line 205
    .line 206
    iget-object v6, v0, Lcom/android/calendar/homepage/l0;->z0:Landroid/graphics/Rect;

    .line 207
    .line 208
    add-int/lit8 v2, v1, -0xa

    .line 209
    .line 210
    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 211
    .line 212
    add-int/lit8 v2, v1, 0xa

    .line 213
    .line 214
    iput v2, v6, Landroid/graphics/Rect;->right:I

    .line 215
    .line 216
    add-int/lit8 v2, v7, -0xa

    .line 217
    .line 218
    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 219
    .line 220
    add-int/lit8 v2, v7, 0xa

    .line 221
    .line 222
    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 223
    .line 224
    iget-object v5, v0, Lcom/android/calendar/homepage/l0;->M0:Lcom/android/calendar/homepage/j0;

    .line 225
    .line 226
    const/4 v4, 0x0

    .line 227
    :goto_6
    if-ge v4, v11, :cond_c

    .line 228
    .line 229
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    move-object v3, v2

    .line 234
    check-cast v3, Lcom/android/calendar/homepage/l0$l;

    .line 235
    .line 236
    move-object v2, v5

    .line 237
    move-object/from16 p2, v3

    .line 238
    .line 239
    move v3, v8

    .line 240
    move/from16 v16, v4

    .line 241
    .line 242
    move v4, v12

    .line 243
    move-object v14, v5

    .line 244
    move v5, v13

    .line 245
    move-object v13, v6

    .line 246
    move v6, v9

    .line 247
    move v15, v7

    .line 248
    move-object/from16 v7, p2

    .line 249
    .line 250
    invoke-virtual/range {v2 .. v7}, Lcom/android/calendar/homepage/j0;->a(IIIILcom/android/calendar/homepage/l0$l;)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-nez v2, :cond_a

    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_a
    move-object/from16 v2, p2

    .line 258
    .line 259
    invoke-virtual {v14, v2, v13}, Lcom/android/calendar/homepage/j0;->b(Lcom/android/calendar/homepage/l0$l;Landroid/graphics/Rect;)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_b

    .line 264
    .line 265
    iget-object v3, v0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    :cond_b
    :goto_7
    add-int/lit8 v4, v16, 0x1

    .line 271
    .line 272
    move-object v6, v13

    .line 273
    move-object v5, v14

    .line 274
    move v7, v15

    .line 275
    const/4 v13, 0x0

    .line 276
    const/4 v14, 0x0

    .line 277
    goto :goto_6

    .line 278
    :cond_c
    move-object v14, v5

    .line 279
    move v15, v7

    .line 280
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-lez v2, :cond_13

    .line 287
    .line 288
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    iget v3, v0, Lcom/android/calendar/homepage/l0;->W0:I

    .line 295
    .line 296
    iget v4, v0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 297
    .line 298
    add-int/2addr v3, v4

    .line 299
    int-to-float v3, v3

    .line 300
    const/4 v4, 0x0

    .line 301
    const/4 v5, 0x0

    .line 302
    :goto_8
    if-ge v5, v2, :cond_e

    .line 303
    .line 304
    iget-object v6, v0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    check-cast v6, Lcom/android/calendar/homepage/l0$l;

    .line 311
    .line 312
    int-to-float v7, v1

    .line 313
    int-to-float v8, v15

    .line 314
    invoke-virtual {v14, v7, v8, v6}, Lcom/android/calendar/homepage/j0;->c(FFLcom/android/calendar/homepage/l0$l;)F

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    cmpg-float v8, v7, v3

    .line 319
    .line 320
    if-gez v8, :cond_d

    .line 321
    .line 322
    move-object v4, v6

    .line 323
    move v3, v7

    .line 324
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_e
    invoke-direct {v0, v4}, Lcom/android/calendar/homepage/l0;->setSelectedEvent(Lcom/android/calendar/homepage/l0$l;)V

    .line 328
    .line 329
    .line 330
    iget-object v1, v0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 331
    .line 332
    iget-object v1, v1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 333
    .line 334
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 343
    .line 344
    iget-object v2, v2, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 345
    .line 346
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    iget v3, v0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 355
    .line 356
    if-ge v3, v1, :cond_f

    .line 357
    .line 358
    invoke-direct {v0, v1}, Lcom/android/calendar/homepage/l0;->setSelectedDay(I)V

    .line 359
    .line 360
    .line 361
    goto :goto_9

    .line 362
    :cond_f
    if-le v3, v2, :cond_10

    .line 363
    .line 364
    invoke-direct {v0, v2}, Lcom/android/calendar/homepage/l0;->setSelectedDay(I)V

    .line 365
    .line 366
    .line 367
    :cond_10
    :goto_9
    iget-object v3, v0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 368
    .line 369
    iget-object v3, v3, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 370
    .line 371
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getStartMinute()I

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    div-int/lit8 v3, v3, 0x3c

    .line 380
    .line 381
    iget-object v4, v0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 382
    .line 383
    iget-object v4, v4, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 384
    .line 385
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/EventEx;->getStartMinute()I

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    iget-object v5, v0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 394
    .line 395
    iget-object v5, v5, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 396
    .line 397
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/EventEx;->getEndMinute()I

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    if-ge v4, v5, :cond_11

    .line 406
    .line 407
    iget-object v4, v0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 408
    .line 409
    iget-object v4, v4, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 410
    .line 411
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/EventEx;->getEndMinute()I

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    add-int/lit8 v4, v4, -0x1

    .line 420
    .line 421
    div-int/lit8 v4, v4, 0x3c

    .line 422
    .line 423
    goto :goto_a

    .line 424
    :cond_11
    iget-object v4, v0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 425
    .line 426
    iget-object v4, v4, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 427
    .line 428
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/EventEx;->getEndMinute()I

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    div-int/lit8 v4, v4, 0x3c

    .line 437
    .line 438
    :goto_a
    iget-boolean v5, v0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 439
    .line 440
    if-nez v5, :cond_13

    .line 441
    .line 442
    iget v5, v0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 443
    .line 444
    if-ge v5, v3, :cond_12

    .line 445
    .line 446
    iget v6, v0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 447
    .line 448
    if-ne v6, v1, :cond_12

    .line 449
    .line 450
    invoke-direct {v0, v3}, Lcom/android/calendar/homepage/l0;->setSelectedHour(I)V

    .line 451
    .line 452
    .line 453
    goto :goto_b

    .line 454
    :cond_12
    if-le v5, v4, :cond_13

    .line 455
    .line 456
    iget v1, v0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 457
    .line 458
    if-ne v1, v2, :cond_13

    .line 459
    .line 460
    invoke-direct {v0, v4}, Lcom/android/calendar/homepage/l0;->setSelectedHour(I)V

    .line 461
    .line 462
    .line 463
    :cond_13
    :goto_b
    return-void
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
.end method

.method private j2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/miui/calendar/util/r0;->L(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->j:Lcom/miui/calendar/util/r0;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/miui/calendar/util/r0;->O(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    .line 25
    .line 26
    return-void
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method static synthetic k(Lcom/android/calendar/homepage/l0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic k0(Lcom/android/calendar/homepage/l0;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->Q0(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private k1(I)I
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->getEventHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/calendar/homepage/l0;->N1:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, -0x1

    .line 9
    const/4 v4, 0x2

    .line 10
    if-ne v1, v4, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 13
    .line 14
    if-ge p1, v0, :cond_0

    .line 15
    .line 16
    iget v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    return v3

    .line 21
    :cond_0
    iget v1, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 22
    .line 23
    sget v3, Lcom/android/calendar/homepage/l0;->y4:I

    .line 24
    .line 25
    div-int/lit8 v5, v3, 0x2

    .line 26
    .line 27
    sub-int v5, v1, v5

    .line 28
    .line 29
    if-le p1, v5, :cond_5

    .line 30
    .line 31
    iget p1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 32
    .line 33
    iget v5, p0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 34
    .line 35
    add-int/2addr v5, v0

    .line 36
    if-ge p1, v5, :cond_5

    .line 37
    .line 38
    iget v5, p0, Lcom/android/calendar/homepage/l0;->i0:I

    .line 39
    .line 40
    add-int/2addr p1, v1

    .line 41
    sub-int/2addr p1, v0

    .line 42
    div-int/2addr v3, v4

    .line 43
    sub-int/2addr p1, v3

    .line 44
    if-le v5, p1, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_1
    const/4 v5, 0x3

    .line 48
    if-ne v1, v5, :cond_3

    .line 49
    .line 50
    iget v0, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 51
    .line 52
    if-le p1, v0, :cond_2

    .line 53
    .line 54
    iget v0, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 55
    .line 56
    iget v1, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 57
    .line 58
    iget v5, p0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 59
    .line 60
    add-int/2addr v1, v5

    .line 61
    if-ge v0, v1, :cond_2

    .line 62
    .line 63
    return v2

    .line 64
    :cond_2
    iget v0, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 65
    .line 66
    sget v1, Lcom/android/calendar/homepage/l0;->y4:I

    .line 67
    .line 68
    div-int/2addr v1, v4

    .line 69
    add-int/2addr v0, v1

    .line 70
    if-ge p1, v0, :cond_5

    .line 71
    .line 72
    iget p1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 73
    .line 74
    if-lez p1, :cond_5

    .line 75
    .line 76
    iget v0, p0, Lcom/android/calendar/homepage/l0;->h0:I

    .line 77
    .line 78
    add-int/lit8 p1, p1, 0x14

    .line 79
    .line 80
    if-ge v0, p1, :cond_5

    .line 81
    .line 82
    return v3

    .line 83
    :cond_3
    iget-boolean v1, p0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 84
    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    iget v1, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 88
    .line 89
    div-int/2addr v0, v4

    .line 90
    add-int/2addr v0, v1

    .line 91
    if-ge p1, v0, :cond_4

    .line 92
    .line 93
    iget v0, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 94
    .line 95
    if-lez v0, :cond_4

    .line 96
    .line 97
    return v3

    .line 98
    :cond_4
    iget v0, p0, Lcom/android/calendar/homepage/l0;->o0:I

    .line 99
    .line 100
    add-int/2addr p1, v0

    .line 101
    iget v0, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 102
    .line 103
    sget v3, Lcom/android/calendar/homepage/l0;->y4:I

    .line 104
    .line 105
    div-int/2addr v3, v4

    .line 106
    sub-int/2addr v0, v3

    .line 107
    if-le p1, v0, :cond_5

    .line 108
    .line 109
    iget p1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 110
    .line 111
    iget v0, p0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 112
    .line 113
    add-int/2addr v1, v0

    .line 114
    if-ge p1, v1, :cond_5

    .line 115
    .line 116
    return v2

    .line 117
    :cond_5
    const/4 p1, 0x0

    .line 118
    return p1
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method private k2()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getStartMinute()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    div-int/lit8 v0, v0, 0x3c

    .line 14
    .line 15
    sget v1, Lcom/android/calendar/homepage/l0;->y4:I

    .line 16
    .line 17
    mul-int/2addr v0, v1

    .line 18
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 19
    .line 20
    iget v2, v1, Lcom/android/calendar/homepage/l0$l;->d:F

    .line 21
    .line 22
    float-to-int v3, v2

    .line 23
    add-int/lit8 v3, v3, -0x14

    .line 24
    .line 25
    if-ge v3, v0, :cond_0

    .line 26
    .line 27
    float-to-int v0, v2

    .line 28
    add-int/lit8 v0, v0, -0x14

    .line 29
    .line 30
    iput v0, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 31
    .line 32
    iget v0, p0, Lcom/android/calendar/homepage/l0;->m0:I

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->getEventHeight()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    div-int/lit8 v1, v1, 0x2

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x14

    .line 41
    .line 42
    iget v2, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 43
    .line 44
    add-int/2addr v1, v2

    .line 45
    sub-int/2addr v0, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iput v0, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 48
    .line 49
    iget v2, p0, Lcom/android/calendar/homepage/l0;->m0:I

    .line 50
    .line 51
    int-to-float v2, v2

    .line 52
    iget v1, v1, Lcom/android/calendar/homepage/l0$l;->e:F

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->getEventHeight()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    div-int/lit8 v3, v3, 0x2

    .line 59
    .line 60
    int-to-float v3, v3

    .line 61
    sub-float/2addr v1, v3

    .line 62
    int-to-float v0, v0

    .line 63
    sub-float/2addr v1, v0

    .line 64
    iget v0, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 65
    .line 66
    int-to-float v0, v0

    .line 67
    add-float/2addr v1, v0

    .line 68
    sub-float/2addr v2, v1

    .line 69
    float-to-int v0, v2

    .line 70
    :goto_0
    iget v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 71
    .line 72
    if-gez v1, :cond_1

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 76
    .line 77
    iget v0, p0, Lcom/android/calendar/homepage/l0;->m0:I

    .line 78
    .line 79
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->getEventHeight()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    div-int/lit8 v1, v1, 0x2

    .line 84
    .line 85
    iget v2, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 86
    .line 87
    add-int/2addr v1, v2

    .line 88
    sub-int/2addr v0, v1

    .line 89
    :cond_1
    return v0
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method static synthetic l(Lcom/android/calendar/homepage/l0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->h0:I

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic l0(Lcom/android/calendar/homepage/l0;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/l0;->R0:F

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic m(Lcom/android/calendar/homepage/l0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/l0;->j0:I

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic m0(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->y0()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private static m1(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)I
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v0, "calendar_id"

    .line 16
    .line 17
    filled-new-array {v0}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v0, p0

    .line 25
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v6, 0x0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return v6

    .line 33
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 40
    .line 41
    .line 42
    return v6

    .line 43
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 51
    .line 52
    .line 53
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 54
    .line 55
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 56
    .line 57
    const/4 v7, 0x1

    .line 58
    new-array v4, v7, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    aput-object v1, v4, v6

    .line 65
    .line 66
    const-string v1, "_id=%d"

    .line 67
    .line 68
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    sget-object v2, Lcom/android/calendar/homepage/l0;->a3:[Ljava/lang/String;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    move-object v0, p0

    .line 77
    move-object v1, v3

    .line 78
    move-object v3, v4

    .line 79
    move-object v4, v5

    .line 80
    move-object v5, v8

    .line 81
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const/4 v0, 0x0

    .line 86
    const/4 v1, 0x2

    .line 87
    if-eqz p0, :cond_3

    .line 88
    .line 89
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    move-object v2, v0

    .line 105
    move v0, v6

    .line 106
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_3
    move-object v2, v0

    .line 116
    move v0, v6

    .line 117
    :goto_1
    const/16 p0, 0x1f4

    .line 118
    .line 119
    if-ge v0, p0, :cond_4

    .line 120
    .line 121
    return v6

    .line 122
    :cond_4
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/EventEx;->isGuestsCanModify()Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-eqz p0, :cond_5

    .line 131
    .line 132
    return v1

    .line 133
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-nez p0, :cond_6

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/EventEx;->getOrganizer()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-eqz p0, :cond_6

    .line 152
    .line 153
    return v1

    .line 154
    :cond_6
    return v7
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method static synthetic n(Lcom/android/calendar/homepage/l0;)Lcom/android/calendar/homepage/l0$l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/l0;->x:Lcom/android/calendar/homepage/l0$l;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic n0()I
    .locals 1

    .line 1
    sget v0, Lcom/android/calendar/homepage/l0;->F4:I

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private n1([Landroid/text/StaticLayout;ILcom/android/calendar/common/event/schema/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    if-ltz v2, :cond_5

    .line 10
    .line 11
    array-length v4, v1

    .line 12
    if-lt v2, v4, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    aget-object v4, v1, v2

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-ne v5, v6, :cond_1

    .line 29
    .line 30
    iget v5, v0, Lcom/android/calendar/homepage/l0;->b1:F

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    cmpl-float v5, v5, v6

    .line 34
    .line 35
    if-eqz v5, :cond_4

    .line 36
    .line 37
    :cond_1
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .line 38
    .line 39
    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p3 .. p3}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const/4 v5, 0x0

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    iget-object v4, v0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual/range {p3 .. p3}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-static {v4, v6}, Lcom/android/calendar/event/e0;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const/16 v6, 0x1f3

    .line 60
    .line 61
    invoke-direct {v0, v4, v6}, Lcom/android/calendar/homepage/l0;->g1(Ljava/lang/String;I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v7, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 66
    .line 67
    .line 68
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 69
    .line 70
    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    invoke-virtual {v7, v4, v5, v6, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3}, Lcom/android/calendar/homepage/l0;->p1(Landroid/graphics/Paint;)Landroid/text/style/AbsoluteSizeSpan;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    invoke-virtual {v7, v4, v5, v6, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 89
    .line 90
    .line 91
    const/16 v4, 0xa

    .line 92
    .line 93
    invoke-virtual {v7, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    if-eqz v4, :cond_3

    .line 101
    .line 102
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-virtual/range {p3 .. p3}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    rsub-int v8, v8, 0x1f4

    .line 115
    .line 116
    invoke-direct {v0, v6, v8}, Lcom/android/calendar/homepage/l0;->g1(Ljava/lang/String;I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v3}, Lcom/android/calendar/homepage/l0;->o1(Landroid/graphics/Paint;)Landroid/text/style/AbsoluteSizeSpan;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    invoke-virtual {v7, v6, v4, v8, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 135
    .line 136
    .line 137
    new-instance v4, Landroid/text/StaticLayout;

    .line 138
    .line 139
    const/4 v8, 0x0

    .line 140
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    new-instance v10, Landroid/text/TextPaint;

    .line 145
    .line 146
    invoke-direct {v10, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 154
    .line 155
    const/high16 v13, 0x3f800000    # 1.0f

    .line 156
    .line 157
    const/4 v14, 0x0

    .line 158
    const/4 v15, 0x0

    .line 159
    const/16 v16, 0x0

    .line 160
    .line 161
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    .line 162
    .line 163
    .line 164
    move-result v17

    .line 165
    move-object v6, v4

    .line 166
    invoke-direct/range {v6 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 167
    .line 168
    .line 169
    aput-object v4, v1, v2

    .line 170
    .line 171
    :cond_4
    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    iget v2, v0, Lcom/android/calendar/homepage/l0;->G:I

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    .line 179
    .line 180
    return-object v4

    .line 181
    :cond_5
    :goto_0
    const/4 v1, 0x0

    .line 182
    return-object v1
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
.end method

.method static synthetic o(Lcom/android/calendar/homepage/l0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->i0:I

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic o0()I
    .locals 1

    .line 1
    sget v0, Lcom/android/calendar/homepage/l0;->F4:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    sput v0, Lcom/android/calendar/homepage/l0;->F4:I

    .line 6
    .line 7
    return v0
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic p(Lcom/android/calendar/homepage/l0;Lcom/android/calendar/homepage/l0$l;)Lcom/android/calendar/homepage/l0$l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/l0;->x:Lcom/android/calendar/homepage/l0$l;

    .line 2
    .line 3
    return-object p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic p0(Lcom/android/calendar/homepage/l0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic q(Lcom/android/calendar/homepage/l0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/l0;->k0:I

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic q0(Lcom/android/calendar/homepage/l0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/homepage/l0;->p:I

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic r(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->R1()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic r0(Lcom/android/calendar/homepage/l0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->p:I

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic s(Lcom/android/calendar/homepage/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->setSelectionMode(I)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private s0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->j2:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->i2:Landroid/view/accessibility/AccessibilityManager;

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 11
    .line 12
    const-string v1, "accessibility"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/calendar/homepage/l0;->i2:Landroid/view/accessibility/AccessibilityManager;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->i2:Landroid/view/accessibility/AccessibilityManager;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->j2:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private setSelectedDay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/calendar/homepage/l0;->s0:I

    .line 4
    .line 5
    return-void
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private setSelectedEvent(Lcom/android/calendar/homepage/l0$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/calendar/homepage/l0;->u0:Lcom/android/calendar/homepage/l0$l;

    .line 4
    .line 5
    return-void
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private setSelectedHour(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/calendar/homepage/l0;->t0:I

    .line 4
    .line 5
    return-void
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private setSelectionMode(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->O1:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->C1()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/miui/calendar/util/g$q;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/miui/calendar/util/g$q;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private setupAllDayTextRect(Landroid/graphics/Rect;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2
    .line 3
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 4
    .line 5
    if-le v0, v1, :cond_3

    .line 6
    .line 7
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 8
    .line 9
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    if-gt v2, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sub-int v4, v0, v1

    .line 15
    .line 16
    sget v5, Lcom/android/calendar/homepage/l0;->a4:I

    .line 17
    .line 18
    sget v6, Lcom/android/calendar/homepage/l0;->b4:I

    .line 19
    .line 20
    add-int v7, v5, v6

    .line 21
    .line 22
    if-le v4, v7, :cond_1

    .line 23
    .line 24
    add-int/2addr v1, v5

    .line 25
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    sub-int/2addr v0, v6

    .line 28
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 29
    .line 30
    :cond_1
    sub-int v0, v2, v3

    .line 31
    .line 32
    iget v1, p0, Lcom/android/calendar/homepage/l0;->P0:I

    .line 33
    .line 34
    iget v4, p0, Lcom/android/calendar/homepage/l0;->Q0:I

    .line 35
    .line 36
    add-int v5, v1, v4

    .line 37
    .line 38
    if-le v0, v5, :cond_2

    .line 39
    .line 40
    add-int/2addr v3, v1

    .line 41
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    sub-int/2addr v2, v4

    .line 44
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 45
    .line 46
    :cond_2
    return-void

    .line 47
    :cond_3
    :goto_0
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 48
    .line 49
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    return-void
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method static synthetic t(Lcom/android/calendar/homepage/l0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/homepage/l0;->r2:Z

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private t0(Lcom/miui/calendar/util/r0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->t()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/calendar/homepage/l0;->H0:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x7

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->q()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int/2addr v1, v0

    .line 19
    invoke-virtual {p1, v1}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method static synthetic u(Lcom/android/calendar/homepage/l0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/homepage/l0;->q2:Z

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private u0(Ljava/lang/StringBuilder;Lcom/android/calendar/common/event/schema/Event;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, ", "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_0
    const-string v0, ". "

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    const/16 v1, 0x2012

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/16 v1, 0x11

    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 73
    .line 74
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    const/16 v1, 0x91

    .line 81
    .line 82
    :cond_2
    :goto_0
    move v7, v1

    .line 83
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    invoke-static/range {v2 .. v7}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    return-void
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method static synthetic v(Lcom/android/calendar/homepage/l0;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/l0;->d:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private v0(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lcom/android/calendar/event/j;->e:[Ljava/lang/String;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    :try_start_0
    new-instance v1, Lcom/android/calendar/common/event/schema/EmptyEvent;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/android/calendar/common/event/schema/EmptyEvent;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 32
    .line 33
    new-instance v1, Lcom/android/calendar/common/event/schema/EmptyEvent;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/android/calendar/common/event/schema/EmptyEvent;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->O:Lcom/android/calendar/common/event/schema/Event;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/android/calendar/event/j;->t(Lcom/android/calendar/common/event/schema/Event;Landroid/database/Cursor;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->O:Lcom/android/calendar/common/event/schema/Event;

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/android/calendar/event/j;->t(Lcom/android/calendar/common/event/schema/Event;Landroid/database/Cursor;)V

    .line 48
    .line 49
    .line 50
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->O:Lcom/android/calendar/common/event/schema/Event;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setUri(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v2, v1}, Lcom/android/calendar/common/event/schema/EventEx;->setUri(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    .line 103
    .line 104
    .line 105
    move-result-wide v2

    .line 106
    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setOriginalStart(J)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->getEnd()J

    .line 122
    .line 123
    .line 124
    move-result-wide v2

    .line 125
    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setOriginalEnd(J)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->getOriginalStart()J

    .line 141
    .line 142
    .line 143
    move-result-wide v2

    .line 144
    iget-object v4, p0, Lcom/android/calendar/homepage/l0;->O:Lcom/android/calendar/common/event/schema/Event;

    .line 145
    .line 146
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    .line 151
    .line 152
    .line 153
    move-result-wide v4

    .line 154
    cmp-long v2, v2, v4

    .line 155
    .line 156
    if-nez v2, :cond_0

    .line 157
    .line 158
    const/4 v2, 0x1

    .line 159
    goto :goto_0

    .line 160
    :cond_0
    const/4 v2, 0x0

    .line 161
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/calendar/common/event/schema/EventEx;->setFirstEventInSeries(Z)V

    .line 162
    .line 163
    .line 164
    iget v1, p0, Lcom/android/calendar/homepage/l0;->d0:I

    .line 165
    .line 166
    iget v2, p0, Lcom/android/calendar/homepage/l0;->f0:I

    .line 167
    .line 168
    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/homepage/l0;->r1(II)J

    .line 169
    .line 170
    .line 171
    move-result-wide v1

    .line 172
    iget v3, p0, Lcom/android/calendar/homepage/l0;->e0:I

    .line 173
    .line 174
    iget v4, p0, Lcom/android/calendar/homepage/l0;->g0:I

    .line 175
    .line 176
    invoke-virtual {p0, v3, v4}, Lcom/android/calendar/homepage/l0;->r1(II)J

    .line 177
    .line 178
    .line 179
    move-result-wide v3

    .line 180
    iget-object v5, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 181
    .line 182
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    iget-object v6, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 187
    .line 188
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    .line 193
    .line 194
    .line 195
    move-result-wide v6

    .line 196
    add-long/2addr v6, v1

    .line 197
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 198
    .line 199
    iget-object v1, v1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 202
    .line 203
    .line 204
    move-result-wide v1

    .line 205
    sub-long/2addr v6, v1

    .line 206
    invoke-virtual {v5, v6, v7}, Lcom/android/calendar/common/event/schema/EventEx;->setStart(J)V

    .line 207
    .line 208
    .line 209
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 216
    .line 217
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->getEnd()J

    .line 222
    .line 223
    .line 224
    move-result-wide v5

    .line 225
    add-long/2addr v5, v3

    .line 226
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 227
    .line 228
    iget-object v2, v2, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 229
    .line 230
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 231
    .line 232
    .line 233
    move-result-wide v2

    .line 234
    sub-long/2addr v5, v2

    .line 235
    invoke-virtual {v1, v5, v6}, Lcom/android/calendar/common/event/schema/EventEx;->setEnd(J)V

    .line 236
    .line 237
    .line 238
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 239
    .line 240
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 241
    .line 242
    invoke-static {v1, v2}, Lcom/miui/calendar/util/b0;->e(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V

    .line 243
    .line 244
    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/l0;->w0(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .line 247
    .line 248
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :catchall_0
    move-exception p1

    .line 253
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 254
    .line 255
    .line 256
    throw p1

    .line 257
    :cond_1
    :goto_1
    return-void
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
.end method

.method private v1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "accessibility"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/calendar/homepage/l0;->i2:Landroid/view/accessibility/AccessibilityManager;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->j2:Z

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->F1()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->k2:Z

    .line 31
    .line 32
    return-void
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method static synthetic w(Lcom/android/calendar/homepage/l0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/homepage/l0;->X1:Z

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private w0(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->hasAlarm()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 p1, 0x1

    .line 16
    new-array v5, p1, [Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    aput-object p2, v5, v0

    .line 28
    .line 29
    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 30
    .line 31
    sget-object v3, Lcom/android/calendar/event/j;->f:[Ljava/lang/String;

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    const-string v4, "event_id=?"

    .line 35
    .line 36
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v1, 0x2

    .line 53
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v0, v1}, Lcom/android/calendar/common/event/schema/Reminder;->valueOf(II)Lcom/android/calendar/common/event/schema/Reminder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->N:Lcom/android/calendar/common/event/schema/Event;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1, v0}, Lcom/android/calendar/common/event/schema/EventEx;->addReminder(Lcom/android/calendar/common/event/schema/Reminder;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->O:Lcom/android/calendar/common/event/schema/Event;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v0}, Lcom/android/calendar/common/event/schema/EventEx;->addReminder(Lcom/android/calendar/common/event/schema/Reminder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_2

    .line 85
    .line 86
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 98
    .line 99
    .line 100
    :cond_1
    throw p1

    .line 101
    :cond_2
    :goto_1
    return-void
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method static synthetic x(Lcom/android/calendar/homepage/l0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->i1:I

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method private x0(FFF)J
    .locals 8

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    .line 3
    div-float v0, p2, v0

    .line 4
    .line 5
    div-float p2, p1, p2

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/android/calendar/homepage/l0;->O0(F)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    mul-float v2, v0, v1

    .line 12
    .line 13
    add-float/2addr v2, v0

    .line 14
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    const v3, 0x45098000    # 2200.0f

    .line 19
    .line 20
    .line 21
    invoke-static {v3, p3}, Ljava/lang/Math;->max(FF)F

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    div-float v3, v2, p3

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 32
    .line 33
    mul-float/2addr v3, v4

    .line 34
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    mul-int/lit8 v3, v3, 0x6

    .line 39
    .line 40
    int-to-long v3, v3

    .line 41
    sget-boolean v5, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 42
    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    sget-object v5, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v7, "halfScreenSize:"

    .line 53
    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, " delta:"

    .line 61
    .line 62
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, " distanceRatio:"

    .line 69
    .line 70
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, " distance:"

    .line 77
    .line 78
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p1, " velocity:"

    .line 85
    .line 86
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p1, " duration:"

    .line 93
    .line 94
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, " distanceInfluenceForSnapDuration:"

    .line 101
    .line 102
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :cond_0
    return-wide v3
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method

.method private x1()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->X0:I

    .line 2
    .line 3
    int-to-double v0, v0

    .line 4
    const-wide v2, 0x3fd999999999999aL    # 0.4

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    mul-double/2addr v0, v2

    .line 10
    double-to-int v0, v0

    .line 11
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->j:Lcom/miui/calendar/util/r0;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->o()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    const/high16 v2, 0x42700000    # 60.0f

    .line 19
    .line 20
    div-float/2addr v1, v2

    .line 21
    sget v2, Lcom/android/calendar/homepage/l0;->x4:I

    .line 22
    .line 23
    int-to-float v3, v2

    .line 24
    mul-float/2addr v1, v3

    .line 25
    float-to-int v1, v1

    .line 26
    sub-int v3, v0, v1

    .line 27
    .line 28
    sget v4, Lcom/android/calendar/homepage/l0;->h3:I

    .line 29
    .line 30
    add-int v5, v2, v4

    .line 31
    .line 32
    div-int/2addr v3, v5

    .line 33
    iget v5, p0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 34
    .line 35
    sub-int/2addr v5, v3

    .line 36
    iput v5, p0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    if-gez v5, :cond_0

    .line 40
    .line 41
    iput v6, p0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget v7, p0, Lcom/android/calendar/homepage/l0;->n1:I

    .line 45
    .line 46
    add-int/2addr v5, v7

    .line 47
    const/16 v8, 0x18

    .line 48
    .line 49
    if-le v5, v8, :cond_1

    .line 50
    .line 51
    sub-int/2addr v8, v7

    .line 52
    iput v8, p0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 53
    .line 54
    :cond_1
    :goto_0
    add-int/2addr v4, v2

    .line 55
    mul-int/2addr v3, v4

    .line 56
    sub-int/2addr v0, v3

    .line 57
    sub-int/2addr v0, v1

    .line 58
    iput v0, p0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 59
    .line 60
    if-gez v0, :cond_2

    .line 61
    .line 62
    iput v6, p0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    if-le v0, v2, :cond_3

    .line 66
    .line 67
    iput v2, p0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 68
    .line 69
    :cond_3
    :goto_1
    return-void
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method static synthetic y(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/android/calendar/homepage/l0;->A4:Z

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private y0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->Z1:Landroid/widget/ViewSwitcher;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->Z1:Landroid/widget/ViewSwitcher;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getOutAnimation()Landroid/view/animation/Animation;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private y1(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->Z1:Landroid/widget/ViewSwitcher;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/calendar/homepage/l0;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/miui/calendar/util/r0;->E(Lcom/miui/calendar/util/r0;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    if-lez p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->q()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget v2, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 31
    .line 32
    add-int/2addr p1, v2

    .line 33
    invoke-virtual {v1, p1}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 37
    .line 38
    iget v2, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 39
    .line 40
    add-int/2addr p1, v2

    .line 41
    invoke-direct {v0, p1}, Lcom/android/calendar/homepage/l0;->setSelectedDay(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->q()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget v2, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 50
    .line 51
    sub-int/2addr p1, v2

    .line 52
    invoke-virtual {v1, p1}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 53
    .line 54
    .line 55
    iget p1, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 56
    .line 57
    iget v2, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 58
    .line 59
    sub-int/2addr p1, v2

    .line 60
    invoke-direct {v0, p1}, Lcom/android/calendar/homepage/l0;->setSelectedDay(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    if-lez p1, :cond_2

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->q()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iget v2, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 71
    .line 72
    sub-int/2addr p1, v2

    .line 73
    invoke-virtual {v1, p1}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 74
    .line 75
    .line 76
    iget p1, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 77
    .line 78
    iget v2, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 79
    .line 80
    sub-int/2addr p1, v2

    .line 81
    invoke-direct {v0, p1}, Lcom/android/calendar/homepage/l0;->setSelectedDay(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->q()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iget v2, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 90
    .line 91
    add-int/2addr p1, v2

    .line 92
    invoke-virtual {v1, p1}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 93
    .line 94
    .line 95
    iget p1, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 96
    .line 97
    iget v2, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 98
    .line 99
    add-int/2addr p1, v2

    .line 100
    invoke-direct {v0, p1}, Lcom/android/calendar/homepage/l0;->setSelectedDay(I)V

    .line 101
    .line 102
    .line 103
    :goto_0
    move v3, v4

    .line 104
    :goto_1
    invoke-virtual {v1, v4}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/l0;->z1(Lcom/android/calendar/homepage/l0;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    invoke-virtual {v0, p1, v1, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/android/calendar/homepage/l0;->L1()V

    .line 130
    .line 131
    .line 132
    return v3
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method static synthetic z(Lcom/android/calendar/homepage/l0;)Lcom/android/calendar/homepage/l0$l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/l0;->y:Lcom/android/calendar/homepage/l0$l;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private z1(Lcom/android/calendar/homepage/l0;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 2
    .line 3
    invoke-direct {p1, v0}, Lcom/android/calendar/homepage/l0;->setSelectedHour(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p1, Lcom/android/calendar/homepage/l0;->w1:Z

    .line 13
    .line 14
    iget v0, p0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 15
    .line 16
    iput v0, p1, Lcom/android/calendar/homepage/l0;->p1:I

    .line 17
    .line 18
    iget v0, p0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 19
    .line 20
    iput v0, p1, Lcom/android/calendar/homepage/l0;->q1:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/android/calendar/homepage/l0;->M1(II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/calendar/homepage/l0;->w1()V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-direct {p1, v0}, Lcom/android/calendar/homepage/l0;->setSelectedEvent(Lcom/android/calendar/homepage/l0$l;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p1, Lcom/android/calendar/homepage/l0;->z1:Lcom/android/calendar/homepage/l0$l;

    .line 41
    .line 42
    iget v0, p0, Lcom/android/calendar/homepage/l0;->H0:I

    .line 43
    .line 44
    iput v0, p1, Lcom/android/calendar/homepage/l0;->H0:I

    .line 45
    .line 46
    iget-object v0, p1, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-lez v0, :cond_0

    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 55
    .line 56
    iput-boolean v0, p1, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p1, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 61
    .line 62
    :goto_0
    invoke-direct {p1}, Lcom/android/calendar/homepage/l0;->K1()V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public B0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->I0:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->c:Z

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/android/calendar/homepage/l0;->e:J

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->d:Landroid/os/Handler;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->K0:Lcom/android/calendar/homepage/l0$m;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->d:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->k:Lcom/android/calendar/homepage/l0$q;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 32
    .line 33
    sget v1, Lcom/android/calendar/homepage/l0;->x4:I

    .line 34
    .line 35
    const-string v2, "preferences_default_cell_height"

    .line 36
    .line 37
    invoke-static {v0, v2, v1}, Lb2/a;->i(Landroid/content/Context;Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->h1()V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->L0:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->P1:Z

    .line 47
    .line 48
    return-void
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method C0()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/android/calendar/homepage/l0;->L:J

    .line 4
    .line 5
    return-void
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected D0(Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFlags()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x10

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFlags()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    and-int/lit8 v0, v0, -0x11

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public E0(Lcom/miui/calendar/util/r0;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->m()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->o()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->r()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v3, v4}, Lcom/miui/calendar/util/r0;->F(I)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Lcom/miui/calendar/util/r0;->H(I)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Lcom/miui/calendar/util/r0;->K(I)V

    .line 33
    .line 34
    .line 35
    sget-boolean v3, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    sget-object v3, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v6, "Begin "

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v6, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/miui/calendar/util/r0;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    sget-object v3, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 68
    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v6, "Diff  "

    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_0
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 94
    .line 95
    invoke-static {p1, v3}, Lcom/miui/calendar/util/r0;->d(Lcom/miui/calendar/util/r0;Lcom/miui/calendar/util/r0;)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    const/4 v5, 0x1

    .line 100
    if-lez v3, :cond_4

    .line 101
    .line 102
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/miui/calendar/util/r0;->q()I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    iget v7, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 109
    .line 110
    add-int/2addr v6, v7

    .line 111
    invoke-virtual {v3, v6}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 115
    .line 116
    invoke-virtual {v3, v5}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 117
    .line 118
    .line 119
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 120
    .line 121
    invoke-static {p1, v3}, Lcom/miui/calendar/util/r0;->d(Lcom/miui/calendar/util/r0;Lcom/miui/calendar/util/r0;)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    sget-boolean v3, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 126
    .line 127
    if-eqz v3, :cond_1

    .line 128
    .line 129
    sget-object v3, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 130
    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v7, "End   "

    .line 137
    .line 138
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object v7, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 142
    .line 143
    invoke-virtual {v7}, Lcom/miui/calendar/util/r0;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 158
    .line 159
    invoke-virtual {v3}, Lcom/miui/calendar/util/r0;->q()I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    iget v7, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 164
    .line 165
    sub-int/2addr v6, v7

    .line 166
    invoke-virtual {v3, v6}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 167
    .line 168
    .line 169
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 170
    .line 171
    invoke-virtual {v3, v5}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 172
    .line 173
    .line 174
    if-gez p1, :cond_2

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_2
    if-nez p1, :cond_3

    .line 178
    .line 179
    move v4, v5

    .line 180
    goto :goto_0

    .line 181
    :cond_3
    move v4, p1

    .line 182
    goto :goto_0

    .line 183
    :cond_4
    move v4, v3

    .line 184
    :goto_0
    sget-boolean p1, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 185
    .line 186
    if-eqz p1, :cond_5

    .line 187
    .line 188
    sget-object p1, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 189
    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v5, "Diff: "

    .line 196
    .line 197
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    :cond_5
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/r0;->F(I)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 216
    .line 217
    invoke-virtual {p1, v1}, Lcom/miui/calendar/util/r0;->H(I)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 221
    .line 222
    invoke-virtual {p1, v2}, Lcom/miui/calendar/util/r0;->K(I)V

    .line 223
    .line 224
    .line 225
    return v4
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method protected E1(IFLandroid/graphics/Paint;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected F0(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 8
    .line 9
    sub-int/2addr v0, p1

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
    .line 20
    .line 21
    .line 22
.end method

.method protected G0(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->getEffectiveWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/2addr p1, v0

    .line 6
    iget v0, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 7
    .line 8
    div-int/2addr p1, v0

    .line 9
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/android/calendar/homepage/l0;->D2:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v0, p0, Lcom/android/calendar/homepage/l0;->I2:I

    .line 19
    .line 20
    :goto_0
    add-int/2addr p1, v0

    .line 21
    return p1
    .line 22
.end method

.method protected G1()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public I1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected J1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->getTimeLineHourWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/calendar/homepage/l0;->I2:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->getEventsEndMargin()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/calendar/homepage/l0;->D2:I

    .line 12
    .line 13
    return-void
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method L1()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->j2()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/l0;->setSelectedEvent(Lcom/android/calendar/homepage/l0$l;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/calendar/homepage/l0;->z1:Lcom/android/calendar/homepage/l0$l;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->E(Lcom/miui/calendar/util/r0;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->F(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->H(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->K(I)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iget-wide v2, p0, Lcom/android/calendar/homepage/l0;->L:J

    .line 47
    .line 48
    cmp-long v2, v0, v2

    .line 49
    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    iput-wide v0, p0, Lcom/android/calendar/homepage/l0;->L:J

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v0}, La2/b;->a(Landroid/content/Context;)La2/b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget v1, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 62
    .line 63
    iget v2, p0, Lcom/android/calendar/homepage/l0;->o:I

    .line 64
    .line 65
    new-instance v3, Lcom/android/calendar/homepage/l0$d;

    .line 66
    .line 67
    invoke-direct {v3, p0}, Lcom/android/calendar/homepage/l0$d;-><init>(Lcom/android/calendar/homepage/l0;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2, v3}, La2/b;->b(IILa2/b$a;)V

    .line 71
    .line 72
    .line 73
    return-void
    .line 74
    .line 75
.end method

.method protected M1(II)V
    .locals 6

    .line 1
    sget p1, Lcom/android/calendar/homepage/l0;->j3:F

    .line 2
    .line 3
    const/high16 v0, 0x40800000    # 4.0f

    .line 4
    .line 5
    mul-float/2addr p1, v0

    .line 6
    float-to-int p1, p1

    .line 7
    sput p1, Lcom/android/calendar/homepage/l0;->k3:I

    .line 8
    .line 9
    div-int/lit8 v0, p2, 0x6

    .line 10
    .line 11
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sput p1, Lcom/android/calendar/homepage/l0;->k3:I

    .line 16
    .line 17
    sget v0, Lcom/android/calendar/homepage/l0;->j3:F

    .line 18
    .line 19
    float-to-int v0, v0

    .line 20
    mul-int/lit8 v0, v0, 0x2

    .line 21
    .line 22
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    sput p1, Lcom/android/calendar/homepage/l0;->k3:I

    .line 27
    .line 28
    int-to-float p1, p1

    .line 29
    sget v0, Lcom/android/calendar/homepage/l0;->j3:F

    .line 30
    .line 31
    div-float/2addr p1, v0

    .line 32
    float-to-int p1, p1

    .line 33
    iput p1, p0, Lcom/android/calendar/homepage/l0;->l1:I

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    move v0, p1

    .line 37
    :goto_0
    iget v1, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 38
    .line 39
    if-ge v0, v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->r:[I

    .line 42
    .line 43
    const/16 v2, 0x19

    .line 44
    .line 45
    aput v2, v1, v0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->v:[Z

    .line 48
    .line 49
    aput-boolean p1, v1, v0

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget v0, p0, Lcom/android/calendar/homepage/l0;->k1:I

    .line 55
    .line 56
    iget v1, p0, Lcom/android/calendar/homepage/l0;->f1:I

    .line 57
    .line 58
    iget v2, p0, Lcom/android/calendar/homepage/l0;->g1:I

    .line 59
    .line 60
    add-int/2addr v1, v2

    .line 61
    sget v2, Lcom/android/calendar/homepage/l0;->p3:I

    .line 62
    .line 63
    mul-int/lit8 v2, v2, 0x2

    .line 64
    .line 65
    add-int/2addr v1, v2

    .line 66
    sget v2, Lcom/android/calendar/homepage/l0;->t3:I

    .line 67
    .line 68
    add-int/2addr v1, v2

    .line 69
    sget v2, Lcom/android/calendar/homepage/l0;->B4:I

    .line 70
    .line 71
    sub-int v2, p2, v2

    .line 72
    .line 73
    div-int/lit8 v2, v2, 0x18

    .line 74
    .line 75
    sget v3, Lcom/android/calendar/homepage/l0;->M3:F

    .line 76
    .line 77
    float-to-int v3, v3

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    sput v2, Lcom/android/calendar/homepage/l0;->z4:I

    .line 83
    .line 84
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    sput v1, Lcom/android/calendar/homepage/l0;->z4:I

    .line 89
    .line 90
    sget v2, Lcom/android/calendar/homepage/l0;->x4:I

    .line 91
    .line 92
    if-ge v2, v1, :cond_1

    .line 93
    .line 94
    sput v1, Lcom/android/calendar/homepage/l0;->x4:I

    .line 95
    .line 96
    :cond_1
    sget v1, Lcom/android/calendar/homepage/l0;->B4:I

    .line 97
    .line 98
    iput v1, p0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 99
    .line 100
    const/4 v2, 0x1

    .line 101
    if-lez v0, :cond_8

    .line 102
    .line 103
    sub-int v1, p2, v1

    .line 104
    .line 105
    sget v3, Lcom/android/calendar/homepage/l0;->l3:I

    .line 106
    .line 107
    sub-int/2addr v1, v3

    .line 108
    if-ne v0, v2, :cond_2

    .line 109
    .line 110
    sget v1, Lcom/android/calendar/homepage/l0;->i3:I

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iget v3, p0, Lcom/android/calendar/homepage/l0;->l1:I

    .line 114
    .line 115
    if-gt v0, v3, :cond_4

    .line 116
    .line 117
    sget v1, Lcom/android/calendar/homepage/l0;->o3:I

    .line 118
    .line 119
    mul-int/2addr v1, v0

    .line 120
    sget v0, Lcom/android/calendar/homepage/l0;->k3:I

    .line 121
    .line 122
    if-le v1, v0, :cond_7

    .line 123
    .line 124
    :cond_3
    move v1, v0

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    iget v4, p0, Lcom/android/calendar/homepage/l0;->i1:I

    .line 127
    .line 128
    if-eqz v4, :cond_5

    .line 129
    .line 130
    sget v0, Lcom/android/calendar/homepage/l0;->k3:I

    .line 131
    .line 132
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    goto :goto_1

    .line 137
    :cond_5
    int-to-float v0, v0

    .line 138
    sget v4, Lcom/android/calendar/homepage/l0;->j3:F

    .line 139
    .line 140
    mul-float/2addr v0, v4

    .line 141
    float-to-int v0, v0

    .line 142
    sget-boolean v5, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 143
    .line 144
    if-nez v5, :cond_6

    .line 145
    .line 146
    sget v5, Lcom/android/calendar/homepage/l0;->k3:I

    .line 147
    .line 148
    if-le v0, v5, :cond_6

    .line 149
    .line 150
    int-to-float v0, v3

    .line 151
    mul-float/2addr v0, v4

    .line 152
    float-to-int v1, v0

    .line 153
    goto :goto_1

    .line 154
    :cond_6
    if-le v0, v1, :cond_3

    .line 155
    .line 156
    :cond_7
    :goto_1
    sget v0, Lcom/android/calendar/homepage/l0;->B4:I

    .line 157
    .line 158
    add-int/2addr v0, v1

    .line 159
    sget v3, Lcom/android/calendar/homepage/l0;->m3:I

    .line 160
    .line 161
    add-int/2addr v0, v3

    .line 162
    iput v0, p0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_8
    iput-boolean p1, p0, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 166
    .line 167
    move v1, p1

    .line 168
    :goto_2
    iput v1, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 169
    .line 170
    iget v0, p0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 171
    .line 172
    sub-int v0, p2, v0

    .line 173
    .line 174
    iget v1, p0, Lcom/android/calendar/homepage/l0;->M2:I

    .line 175
    .line 176
    sub-int/2addr v0, v1

    .line 177
    iput v0, p0, Lcom/android/calendar/homepage/l0;->X0:I

    .line 178
    .line 179
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->E1:Landroid/graphics/drawable/Drawable;

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->C0:Landroid/graphics/Rect;

    .line 186
    .line 187
    iget v3, p0, Lcom/android/calendar/homepage/l0;->I2:I

    .line 188
    .line 189
    sub-int/2addr v3, v0

    .line 190
    div-int/lit8 v3, v3, 0x2

    .line 191
    .line 192
    iget v4, p0, Lcom/android/calendar/homepage/l0;->P0:I

    .line 193
    .line 194
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 199
    .line 200
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->C0:Landroid/graphics/Rect;

    .line 201
    .line 202
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 203
    .line 204
    add-int/2addr v3, v0

    .line 205
    iget v0, p0, Lcom/android/calendar/homepage/l0;->I2:I

    .line 206
    .line 207
    iget v4, p0, Lcom/android/calendar/homepage/l0;->Q0:I

    .line 208
    .line 209
    sub-int/2addr v0, v4

    .line 210
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 215
    .line 216
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->C0:Landroid/graphics/Rect;

    .line 217
    .line 218
    iget v1, p0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 219
    .line 220
    sget v3, Lcom/android/calendar/homepage/l0;->c4:I

    .line 221
    .line 222
    sub-int/2addr v1, v3

    .line 223
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 224
    .line 225
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->E1:Landroid/graphics/drawable/Drawable;

    .line 226
    .line 227
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    sub-int/2addr v1, v3

    .line 232
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 233
    .line 234
    iget v0, p0, Lcom/android/calendar/homepage/l0;->X0:I

    .line 235
    .line 236
    sget v1, Lcom/android/calendar/homepage/l0;->x4:I

    .line 237
    .line 238
    sget v3, Lcom/android/calendar/homepage/l0;->h3:I

    .line 239
    .line 240
    add-int/2addr v3, v1

    .line 241
    div-int/2addr v0, v3

    .line 242
    iput v0, p0, Lcom/android/calendar/homepage/l0;->n1:I

    .line 243
    .line 244
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->M0:Lcom/android/calendar/homepage/j0;

    .line 245
    .line 246
    int-to-float v1, v1

    .line 247
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/j0;->f(F)V

    .line 248
    .line 249
    .line 250
    sget v0, Lcom/android/calendar/homepage/l0;->M3:F

    .line 251
    .line 252
    const v1, 0x476a6000    # 60000.0f

    .line 253
    .line 254
    .line 255
    mul-float/2addr v0, v1

    .line 256
    sget v1, Lcom/android/calendar/homepage/l0;->x4:I

    .line 257
    .line 258
    int-to-float v1, v1

    .line 259
    const/high16 v3, 0x42700000    # 60.0f

    .line 260
    .line 261
    div-float/2addr v1, v3

    .line 262
    div-float/2addr v0, v1

    .line 263
    float-to-long v0, v0

    .line 264
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-direct {p0, v3, v0, v1}, Lcom/android/calendar/homepage/l0;->L0(Ljava/util/ArrayList;J)V

    .line 267
    .line 268
    .line 269
    sget v0, Lcom/android/calendar/homepage/l0;->h3:I

    .line 270
    .line 271
    sget v1, Lcom/android/calendar/homepage/l0;->x4:I

    .line 272
    .line 273
    add-int/2addr v1, v0

    .line 274
    mul-int/lit8 v1, v1, 0x18

    .line 275
    .line 276
    add-int/2addr v0, v1

    .line 277
    iget v1, p0, Lcom/android/calendar/homepage/l0;->X0:I

    .line 278
    .line 279
    sub-int/2addr v0, v1

    .line 280
    iput v0, p0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 281
    .line 282
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 283
    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v3, "mMaxViewStartY:"

    .line 290
    .line 291
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    iget v3, p0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 295
    .line 296
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v3, " mGridAreaHeight:"

    .line 300
    .line 301
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget v3, p0, Lcom/android/calendar/homepage/l0;->X0:I

    .line 305
    .line 306
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v3, " firstCell:"

    .line 310
    .line 311
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    iget v3, p0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 315
    .line 316
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v3, " height:"

    .line 320
    .line 321
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string p2, " hashCode:"

    .line 328
    .line 329
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 333
    .line 334
    .line 335
    move-result p2

    .line 336
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    invoke-static {v0, p2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    sget-boolean p2, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 347
    .line 348
    if-eqz p2, :cond_9

    .line 349
    .line 350
    sget-object p2, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 351
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    const-string v1, "mViewStartY: "

    .line 358
    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    iget v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    sget-object p2, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 375
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    const-string v1, "mMaxViewStartY: "

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    iget v1, p0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    :cond_9
    iget p2, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 399
    .line 400
    iget v0, p0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 401
    .line 402
    if-le p2, v0, :cond_a

    .line 403
    .line 404
    iput v0, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 405
    .line 406
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->I0()V

    .line 407
    .line 408
    .line 409
    :cond_a
    iget p2, p0, Lcom/android/calendar/homepage/l0;->X0:I

    .line 410
    .line 411
    if-lez p2, :cond_b

    .line 412
    .line 413
    iget p2, p0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 414
    .line 415
    const/4 v0, -0x1

    .line 416
    if-ne p2, v0, :cond_b

    .line 417
    .line 418
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->x1()V

    .line 419
    .line 420
    .line 421
    :cond_b
    iget p2, p0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 422
    .line 423
    sget v0, Lcom/android/calendar/homepage/l0;->x4:I

    .line 424
    .line 425
    sget v1, Lcom/android/calendar/homepage/l0;->h3:I

    .line 426
    .line 427
    add-int v3, v0, v1

    .line 428
    .line 429
    if-lt p2, v3, :cond_c

    .line 430
    .line 431
    add-int p2, v0, v1

    .line 432
    .line 433
    sub-int/2addr p2, v2

    .line 434
    iput p2, p0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 435
    .line 436
    :cond_c
    iget p2, p0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 437
    .line 438
    add-int/2addr v0, v1

    .line 439
    mul-int/2addr p2, v0

    .line 440
    iget v0, p0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 441
    .line 442
    sub-int/2addr p2, v0

    .line 443
    iget v0, p0, Lcom/android/calendar/homepage/l0;->w2:I

    .line 444
    .line 445
    add-int/2addr p2, v0

    .line 446
    iput p2, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 447
    .line 448
    sget-object p2, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 449
    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v1, " remeasure ---- 1 ----- mViewStartY:"

    .line 463
    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    iget v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 468
    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    const-string v1, " mFirstHour:"

    .line 473
    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    iget v3, p0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 478
    .line 479
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v3, " mFirstCell:"

    .line 483
    .line 484
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    iget v4, p0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 488
    .line 489
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    const-string v4, " mFirstHourOffset:"

    .line 493
    .line 494
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    iget v5, p0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 498
    .line 499
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    const-string v5, " mCurAllDayOffset:"

    .line 503
    .line 504
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    iget v5, p0, Lcom/android/calendar/homepage/l0;->s2:I

    .line 508
    .line 509
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    const-string v5, " mSwitchDeltaY:"

    .line 513
    .line 514
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    iget v5, p0, Lcom/android/calendar/homepage/l0;->w2:I

    .line 518
    .line 519
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    const-string v5, " mAllDayPagerState"

    .line 523
    .line 524
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    iget v5, p0, Lcom/android/calendar/homepage/l0;->v2:I

    .line 528
    .line 529
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    const-string v5, " mUserScrolled:"

    .line 533
    .line 534
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    iget-boolean v5, p0, Lcom/android/calendar/homepage/l0;->x2:Z

    .line 538
    .line 539
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-static {p2, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->I1()Z

    .line 550
    .line 551
    .line 552
    move-result p2

    .line 553
    if-nez p2, :cond_d

    .line 554
    .line 555
    iget p2, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 556
    .line 557
    iget v0, p0, Lcom/android/calendar/homepage/l0;->s2:I

    .line 558
    .line 559
    add-int/2addr p2, v0

    .line 560
    iget v0, p0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 561
    .line 562
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 563
    .line 564
    .line 565
    move-result p2

    .line 566
    iput p2, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 567
    .line 568
    :cond_d
    iget p2, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 569
    .line 570
    if-gez p2, :cond_e

    .line 571
    .line 572
    iput p1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 573
    .line 574
    :cond_e
    sget-object p2, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 575
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .line 580
    .line 581
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 582
    .line 583
    .line 584
    move-result v5

    .line 585
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    const-string v5, " remeasure ---- 2 ----- mViewStartY:"

    .line 589
    .line 590
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    iget v5, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 594
    .line 595
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    iget v1, p0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 602
    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    iget v1, p0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 610
    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    iget v1, p0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 618
    .line 619
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-static {p2, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    iput p1, p0, Lcom/android/calendar/homepage/l0;->s2:I

    .line 630
    .line 631
    iput p1, p0, Lcom/android/calendar/homepage/l0;->w2:I

    .line 632
    .line 633
    iget p1, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 634
    .line 635
    iget p2, p0, Lcom/android/calendar/homepage/l0;->y0:I

    .line 636
    .line 637
    add-int/2addr p2, v2

    .line 638
    mul-int/2addr p1, p2

    .line 639
    iget-object p2, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 640
    .line 641
    if-eqz p2, :cond_f

    .line 642
    .line 643
    iget-wide v0, p0, Lcom/android/calendar/homepage/l0;->e:J

    .line 644
    .line 645
    iget-object p2, p2, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 646
    .line 647
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 648
    .line 649
    .line 650
    move-result-wide v2

    .line 651
    cmp-long p2, v0, v2

    .line 652
    .line 653
    if-eqz p2, :cond_f

    .line 654
    .line 655
    iget-object p2, p0, Lcom/android/calendar/homepage/l0;->I0:Landroid/widget/PopupWindow;

    .line 656
    .line 657
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 658
    .line 659
    .line 660
    :cond_f
    iget-object p2, p0, Lcom/android/calendar/homepage/l0;->I0:Landroid/widget/PopupWindow;

    .line 661
    .line 662
    add-int/lit8 p1, p1, -0x14

    .line 663
    .line 664
    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 665
    .line 666
    .line 667
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->I0:Landroid/widget/PopupWindow;

    .line 668
    .line 669
    const/4 p2, -0x2

    .line 670
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 671
    .line 672
    .line 673
    return-void
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
.end method

.method public Q1()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->d:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->k:Lcom/android/calendar/homepage/l0$q;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->d:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->k:Lcom/android/calendar/homepage/l0$q;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
    .line 21
    .line 22
.end method

.method protected R0(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget-object v6, p0, Lcom/android/calendar/homepage/l0;->D0:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget-object v7, p0, Lcom/android/calendar/homepage/l0;->z0:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {p0, v7, p1, v6}, Lcom/android/calendar/homepage/l0;->f1(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/android/calendar/homepage/l0;->o:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    .line 15
    .line 16
    .line 17
    move-result v8

    .line 18
    iget v2, p0, Lcom/android/calendar/homepage/l0;->G:I

    .line 19
    .line 20
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 21
    .line 22
    .line 23
    move v9, v0

    .line 24
    move v10, v1

    .line 25
    :goto_0
    iget v0, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 26
    .line 27
    const/4 v11, 0x1

    .line 28
    if-ge v10, v0, :cond_1

    .line 29
    .line 30
    sget v3, Lcom/android/calendar/homepage/l0;->h3:I

    .line 31
    .line 32
    move-object v0, p0

    .line 33
    move v1, v9

    .line 34
    move v2, v10

    .line 35
    move-object v4, p1

    .line 36
    move-object v5, v6

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/homepage/l0;->e1(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/android/calendar/homepage/l0;->l:I

    .line 41
    .line 42
    if-ne v9, v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->j:Lcom/miui/calendar/util/r0;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->m()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sget v1, Lcom/android/calendar/homepage/l0;->x4:I

    .line 51
    .line 52
    sget v2, Lcom/android/calendar/homepage/l0;->h3:I

    .line 53
    .line 54
    add-int/2addr v1, v2

    .line 55
    mul-int/2addr v0, v1

    .line 56
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->j:Lcom/miui/calendar/util/r0;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->o()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    sget v2, Lcom/android/calendar/homepage/l0;->x4:I

    .line 63
    .line 64
    mul-int/2addr v1, v2

    .line 65
    div-int/lit8 v1, v1, 0x3c

    .line 66
    .line 67
    add-int/2addr v0, v1

    .line 68
    add-int/lit8 v3, v0, 0x1

    .line 69
    .line 70
    iget v0, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 71
    .line 72
    if-lt v3, v0, :cond_0

    .line 73
    .line 74
    iget v1, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 75
    .line 76
    add-int/2addr v0, v1

    .line 77
    add-int/lit8 v0, v0, -0x2

    .line 78
    .line 79
    if-ge v3, v0, :cond_0

    .line 80
    .line 81
    move-object v0, p0

    .line 82
    move-object v1, v7

    .line 83
    move v2, v10

    .line 84
    move-object v4, p1

    .line 85
    move-object v5, v6

    .line 86
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/homepage/l0;->a1(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 90
    .line 91
    add-int/lit8 v9, v9, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v7, p1, v6}, Lcom/android/calendar/homepage/l0;->b1(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 101
    .line 102
    .line 103
    return-void
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method U1(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 2
    .line 3
    iput p2, p0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 4
    .line 5
    return-void
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method protected X1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->E0:Landroid/graphics/Paint;

    .line 2
    .line 3
    sget v1, Lcom/android/calendar/homepage/l0;->F3:F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->E0:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-static {}, Lcom/miui/calendar/util/w;->c()Landroid/graphics/Typeface;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->E0:Landroid/graphics/Paint;

    .line 18
    .line 19
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->E0:Landroid/graphics/Paint;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    .line 29
    .line 30
    return-void
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method protected Z0(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->l:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/calendar/homepage/l0;->o:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->G1()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->j:Lcom/miui/calendar/util/r0;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->m()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sget v1, Lcom/android/calendar/homepage/l0;->x4:I

    .line 23
    .line 24
    sget v4, Lcom/android/calendar/homepage/l0;->h3:I

    .line 25
    .line 26
    add-int/2addr v1, v4

    .line 27
    mul-int/2addr v0, v1

    .line 28
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->j:Lcom/miui/calendar/util/r0;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->o()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    sget v4, Lcom/android/calendar/homepage/l0;->x4:I

    .line 35
    .line 36
    mul-int/2addr v1, v4

    .line 37
    div-int/lit8 v1, v1, 0x3c

    .line 38
    .line 39
    add-int/2addr v0, v1

    .line 40
    add-int/2addr v0, v3

    .line 41
    iget v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 42
    .line 43
    if-le v0, v1, :cond_8

    .line 44
    .line 45
    iget v4, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 46
    .line 47
    add-int/2addr v1, v4

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 53
    .line 54
    iget v1, p0, Lcom/android/calendar/homepage/l0;->W0:I

    .line 55
    .line 56
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 57
    .line 58
    iget v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 59
    .line 60
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 63
    .line 64
    sget v0, Lcom/android/calendar/homepage/l0;->p4:I

    .line 65
    .line 66
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_0
    if-ltz v0, :cond_7

    .line 75
    .line 76
    iget v1, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 77
    .line 78
    if-ge v0, v1, :cond_7

    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->j:Lcom/miui/calendar/util/r0;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->m()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    sget v4, Lcom/android/calendar/homepage/l0;->x4:I

    .line 87
    .line 88
    sget v5, Lcom/android/calendar/homepage/l0;->h3:I

    .line 89
    .line 90
    add-int/2addr v4, v5

    .line 91
    mul-int/2addr v1, v4

    .line 92
    iget-object v4, p0, Lcom/android/calendar/homepage/l0;->j:Lcom/miui/calendar/util/r0;

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/miui/calendar/util/r0;->o()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    sget v5, Lcom/android/calendar/homepage/l0;->x4:I

    .line 99
    .line 100
    mul-int/2addr v4, v5

    .line 101
    div-int/lit8 v4, v4, 0x3c

    .line 102
    .line 103
    add-int/2addr v1, v4

    .line 104
    add-int/2addr v1, v3

    .line 105
    iget v4, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 106
    .line 107
    if-le v1, v4, :cond_3

    .line 108
    .line 109
    iget v5, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 110
    .line 111
    add-int/2addr v4, v5

    .line 112
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_1

    .line 121
    .line 122
    iget v4, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 123
    .line 124
    sub-int/2addr v4, v3

    .line 125
    sub-int/2addr v4, v0

    .line 126
    invoke-virtual {p0, v4}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    :goto_0
    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 136
    .line 137
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_2

    .line 142
    .line 143
    iget v4, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 144
    .line 145
    sub-int/2addr v4, v0

    .line 146
    goto :goto_1

    .line 147
    :cond_2
    add-int/lit8 v4, v0, 0x1

    .line 148
    .line 149
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 154
    .line 155
    iget v4, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 156
    .line 157
    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 158
    .line 159
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 160
    .line 161
    sget v4, Lcom/android/calendar/homepage/l0;->p4:I

    .line 162
    .line 163
    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 167
    .line 168
    .line 169
    :cond_3
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_4

    .line 174
    .line 175
    iget v2, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 176
    .line 177
    sub-int/2addr v2, v0

    .line 178
    invoke-virtual {p0, v2}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    :cond_4
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 183
    .line 184
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_5

    .line 189
    .line 190
    iget v2, p0, Lcom/android/calendar/homepage/l0;->W0:I

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    :goto_2
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 198
    .line 199
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->A0:Landroid/graphics/Rect;

    .line 200
    .line 201
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 202
    .line 203
    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 204
    .line 205
    if-lez v0, :cond_6

    .line 206
    .line 207
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 208
    .line 209
    :cond_6
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 210
    .line 211
    sget v0, Lcom/android/calendar/homepage/l0;->p4:I

    .line 212
    .line 213
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_7
    if-lez v0, :cond_8

    .line 221
    .line 222
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 223
    .line 224
    iget v0, p0, Lcom/android/calendar/homepage/l0;->W0:I

    .line 225
    .line 226
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 227
    .line 228
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->A0:Landroid/graphics/Rect;

    .line 229
    .line 230
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 231
    .line 232
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 233
    .line 234
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 235
    .line 236
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 237
    .line 238
    sget v0, Lcom/android/calendar/homepage/l0;->p4:I

    .line 239
    .line 240
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 244
    .line 245
    .line 246
    :cond_8
    :goto_3
    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 247
    .line 248
    .line 249
    return-void
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method

.method public Z1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->H:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/16 v0, 0xff

    .line 9
    .line 10
    iput v0, p0, Lcom/android/calendar/homepage/l0;->G:I

    .line 11
    .line 12
    return-void
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected a1(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/calendar/homepage/l0;->F0(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/android/calendar/homepage/l0;->E2:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    sub-int/2addr v0, v1

    .line 16
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    add-int/2addr p2, v1

    .line 20
    invoke-virtual {p0, p2}, Lcom/android/calendar/homepage/l0;->F0(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget v2, p0, Lcom/android/calendar/homepage/l0;->E2:I

    .line 31
    .line 32
    div-int/lit8 v2, v2, 0x2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget v2, p0, Lcom/android/calendar/homepage/l0;->E2:I

    .line 36
    .line 37
    neg-int v2, v2

    .line 38
    :goto_1
    add-int/2addr p2, v2

    .line 39
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 40
    .line 41
    iget p2, p0, Lcom/android/calendar/homepage/l0;->y2:I

    .line 42
    .line 43
    sub-int v2, p3, p2

    .line 44
    .line 45
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 46
    .line 47
    mul-int/lit8 p2, p2, 0x2

    .line 48
    .line 49
    add-int/2addr v2, p2

    .line 50
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    iget p2, p0, Lcom/android/calendar/homepage/l0;->L2:I

    .line 53
    .line 54
    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    .line 56
    .line 57
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 58
    .line 59
    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    .line 61
    .line 62
    iget p2, p0, Lcom/android/calendar/homepage/l0;->H2:I

    .line 63
    .line 64
    int-to-float p2, p2

    .line 65
    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    .line 70
    .line 71
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 72
    .line 73
    int-to-float v3, p2

    .line 74
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 75
    .line 76
    int-to-float v4, p2

    .line 77
    iget p2, p1, Landroid/graphics/Rect;->right:I

    .line 78
    .line 79
    int-to-float v5, p2

    .line 80
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 81
    .line 82
    int-to-float v6, p2

    .line 83
    const/high16 v7, 0x3f800000    # 1.0f

    .line 84
    .line 85
    const/high16 v8, 0x3f800000    # 1.0f

    .line 86
    .line 87
    move-object v2, p4

    .line 88
    move-object v9, p5

    .line 89
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 90
    .line 91
    .line 92
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 93
    .line 94
    iget v2, p0, Lcom/android/calendar/homepage/l0;->H2:I

    .line 95
    .line 96
    add-int/2addr p2, v2

    .line 97
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 98
    .line 99
    iget p2, p1, Landroid/graphics/Rect;->right:I

    .line 100
    .line 101
    sub-int/2addr p2, v2

    .line 102
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 103
    .line 104
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 105
    .line 106
    add-int/2addr p2, v1

    .line 107
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 108
    .line 109
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 110
    .line 111
    sub-int/2addr p2, v1

    .line 112
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 113
    .line 114
    iget p2, p0, Lcom/android/calendar/homepage/l0;->K2:I

    .line 115
    .line 116
    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    .line 118
    .line 119
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 120
    .line 121
    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    .line 123
    .line 124
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 125
    .line 126
    int-to-float v2, p2

    .line 127
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 128
    .line 129
    int-to-float v3, p2

    .line 130
    iget p2, p1, Landroid/graphics/Rect;->right:I

    .line 131
    .line 132
    int-to-float v4, p2

    .line 133
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 134
    .line 135
    int-to-float v5, p1

    .line 136
    const/high16 v6, 0x3f800000    # 1.0f

    .line 137
    .line 138
    move-object v1, p4

    .line 139
    move-object v8, p5

    .line 140
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 141
    .line 142
    .line 143
    iget p1, p0, Lcom/android/calendar/homepage/l0;->C2:I

    .line 144
    .line 145
    int-to-float p1, p1

    .line 146
    const/high16 p2, 0x40000000    # 2.0f

    .line 147
    .line 148
    div-float/2addr p1, p2

    .line 149
    iget v1, p0, Lcom/android/calendar/homepage/l0;->H2:I

    .line 150
    .line 151
    int-to-float v1, v1

    .line 152
    add-float/2addr p1, v1

    .line 153
    int-to-float v0, v0

    .line 154
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_2

    .line 159
    .line 160
    neg-float p1, p1

    .line 161
    div-float/2addr p1, p2

    .line 162
    :cond_2
    add-float/2addr v0, p1

    .line 163
    int-to-float p1, p3

    .line 164
    iget p3, p0, Lcom/android/calendar/homepage/l0;->L2:I

    .line 165
    .line 166
    invoke-virtual {p5, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    .line 168
    .line 169
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 170
    .line 171
    invoke-virtual {p5, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    .line 173
    .line 174
    iget p3, p0, Lcom/android/calendar/homepage/l0;->H2:I

    .line 175
    .line 176
    int-to-float p3, p3

    .line 177
    invoke-virtual {p5, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    .line 179
    .line 180
    iget p3, p0, Lcom/android/calendar/homepage/l0;->C2:I

    .line 181
    .line 182
    int-to-float p3, p3

    .line 183
    div-float/2addr p3, p2

    .line 184
    iget v1, p0, Lcom/android/calendar/homepage/l0;->H2:I

    .line 185
    .line 186
    int-to-float v1, v1

    .line 187
    add-float/2addr p3, v1

    .line 188
    invoke-virtual {p4, v0, p1, p3, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 189
    .line 190
    .line 191
    iget p3, p0, Lcom/android/calendar/homepage/l0;->K2:I

    .line 192
    .line 193
    invoke-virtual {p5, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    .line 195
    .line 196
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 197
    .line 198
    invoke-virtual {p5, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    .line 200
    .line 201
    iget p3, p0, Lcom/android/calendar/homepage/l0;->C2:I

    .line 202
    .line 203
    int-to-float p3, p3

    .line 204
    div-float/2addr p3, p2

    .line 205
    const/high16 p2, 0x3fc00000    # 1.5f

    .line 206
    .line 207
    add-float/2addr p3, p2

    .line 208
    invoke-virtual {p4, v0, p1, p3, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 209
    .line 210
    .line 211
    return-void
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
.end method

.method protected b1(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    iget v0, v7, Lcom/android/calendar/homepage/l0;->O1:I

    .line 10
    .line 11
    if-eqz v0, :cond_e

    .line 12
    .line 13
    iget-boolean v0, v7, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 14
    .line 15
    if-nez v0, :cond_e

    .line 16
    .line 17
    iget-boolean v0, v7, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 18
    .line 19
    const-wide/16 v1, 0x12c

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    const/4 v15, 0x1

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-boolean v0, v7, Lcom/android/calendar/homepage/l0;->o2:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, v7, Lcom/android/calendar/homepage/l0;->n2:Lcom/miui/calendar/util/c1;

    .line 30
    .line 31
    new-instance v8, Landroid/view/animation/OvershootInterpolator;

    .line 32
    .line 33
    invoke-direct {v8}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 34
    .line 35
    .line 36
    new-array v9, v3, [F

    .line 37
    .line 38
    fill-array-data v9, :array_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v8, v1, v2, v9}, Lcom/miui/calendar/util/c1;->d(Landroid/view/animation/Interpolator;J[F)V

    .line 42
    .line 43
    .line 44
    iput-boolean v15, v7, Lcom/android/calendar/homepage/l0;->o2:Z

    .line 45
    .line 46
    :cond_0
    iget-boolean v0, v7, Lcom/android/calendar/homepage/l0;->q2:Z

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-boolean v0, v7, Lcom/android/calendar/homepage/l0;->r2:Z

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    iget-boolean v0, v7, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    const-wide/16 v1, 0x32

    .line 59
    .line 60
    :cond_1
    iget-object v0, v7, Lcom/android/calendar/homepage/l0;->p2:Lcom/miui/calendar/util/c1;

    .line 61
    .line 62
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    .line 63
    .line 64
    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 65
    .line 66
    .line 67
    new-array v9, v3, [F

    .line 68
    .line 69
    fill-array-data v9, :array_1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v8, v1, v2, v9}, Lcom/miui/calendar/util/c1;->d(Landroid/view/animation/Interpolator;J[F)V

    .line 73
    .line 74
    .line 75
    iput-boolean v15, v7, Lcom/android/calendar/homepage/l0;->r2:Z

    .line 76
    .line 77
    :cond_2
    iget v0, v7, Lcom/android/calendar/homepage/l0;->a0:I

    .line 78
    .line 79
    iget v1, v7, Lcom/android/calendar/homepage/l0;->o:I

    .line 80
    .line 81
    sub-int/2addr v0, v1

    .line 82
    iget v1, v7, Lcom/android/calendar/homepage/l0;->F2:I

    .line 83
    .line 84
    iget v2, v7, Lcom/android/calendar/homepage/l0;->h0:I

    .line 85
    .line 86
    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 87
    .line 88
    iget v2, v7, Lcom/android/calendar/homepage/l0;->i0:I

    .line 89
    .line 90
    div-int/2addr v1, v3

    .line 91
    sub-int/2addr v2, v1

    .line 92
    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 93
    .line 94
    invoke-virtual {v7, v0}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    add-int/2addr v1, v15

    .line 99
    iput v1, v6, Landroid/graphics/Rect;->left:I

    .line 100
    .line 101
    add-int/lit8 v1, v0, 0x1

    .line 102
    .line 103
    invoke-virtual {v7, v1}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    iget v2, v7, Lcom/android/calendar/homepage/l0;->F2:I

    .line 108
    .line 109
    sub-int/2addr v1, v2

    .line 110
    iput v1, v6, Landroid/graphics/Rect;->right:I

    .line 111
    .line 112
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    iget v1, v7, Lcom/android/calendar/homepage/l0;->m1:I

    .line 119
    .line 120
    sub-int/2addr v1, v15

    .line 121
    sub-int/2addr v1, v0

    .line 122
    invoke-virtual {v7, v1}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    add-int/2addr v1, v15

    .line 127
    iput v1, v6, Landroid/graphics/Rect;->left:I

    .line 128
    .line 129
    iget v1, v7, Lcom/android/calendar/homepage/l0;->m1:I

    .line 130
    .line 131
    sub-int/2addr v1, v0

    .line 132
    invoke-virtual {v7, v1}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 137
    .line 138
    :cond_3
    iget v0, v6, Landroid/graphics/Rect;->left:I

    .line 139
    .line 140
    int-to-float v0, v0

    .line 141
    iget v1, v6, Landroid/graphics/Rect;->top:I

    .line 142
    .line 143
    int-to-float v1, v1

    .line 144
    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 145
    .line 146
    int-to-float v2, v2

    .line 147
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 148
    .line 149
    int-to-float v8, v8

    .line 150
    invoke-direct {v7, v0, v1, v2, v8}, Lcom/android/calendar/homepage/l0;->S1(FFFF)V

    .line 151
    .line 152
    .line 153
    sget v0, Lcom/android/calendar/homepage/l0;->m4:I

    .line 154
    .line 155
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    .line 157
    .line 158
    iget v0, v6, Landroid/graphics/Rect;->top:I

    .line 159
    .line 160
    sget v1, Lcom/android/calendar/homepage/l0;->h3:I

    .line 161
    .line 162
    add-int/2addr v0, v1

    .line 163
    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 164
    .line 165
    iget v0, v6, Landroid/graphics/Rect;->right:I

    .line 166
    .line 167
    sub-int/2addr v0, v15

    .line 168
    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 169
    .line 170
    iget-object v0, v7, Lcom/android/calendar/homepage/l0;->n2:Lcom/miui/calendar/util/c1;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/miui/calendar/util/c1;->f()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    const/high16 v1, 0x3f800000    # 1.0f

    .line 177
    .line 178
    if-eqz v0, :cond_4

    .line 179
    .line 180
    iget-object v0, v7, Lcom/android/calendar/homepage/l0;->n2:Lcom/miui/calendar/util/c1;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/miui/calendar/util/c1;->e()F

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    goto :goto_0

    .line 187
    :cond_4
    move v0, v1

    .line 188
    :goto_0
    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 189
    .line 190
    iget v8, v6, Landroid/graphics/Rect;->left:I

    .line 191
    .line 192
    sub-int v9, v2, v8

    .line 193
    .line 194
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    .line 195
    .line 196
    iget v11, v6, Landroid/graphics/Rect;->top:I

    .line 197
    .line 198
    sub-int v12, v10, v11

    .line 199
    .line 200
    int-to-float v9, v9

    .line 201
    sub-float/2addr v0, v1

    .line 202
    mul-float/2addr v9, v0

    .line 203
    const/high16 v13, 0x40000000    # 2.0f

    .line 204
    .line 205
    div-float/2addr v9, v13

    .line 206
    int-to-float v12, v12

    .line 207
    mul-float/2addr v12, v0

    .line 208
    div-float/2addr v12, v13

    .line 209
    int-to-float v0, v8

    .line 210
    sub-float/2addr v0, v9

    .line 211
    float-to-int v0, v0

    .line 212
    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 213
    .line 214
    int-to-float v0, v2

    .line 215
    add-float/2addr v0, v9

    .line 216
    float-to-int v0, v0

    .line 217
    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 218
    .line 219
    int-to-float v0, v10

    .line 220
    add-float/2addr v0, v12

    .line 221
    float-to-int v0, v0

    .line 222
    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 223
    .line 224
    int-to-float v0, v11

    .line 225
    sub-float/2addr v0, v12

    .line 226
    float-to-int v0, v0

    .line 227
    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 228
    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getAlpha()I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    const/4 v2, 0x0

    .line 234
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 235
    .line 236
    .line 237
    const/4 v2, 0x0

    .line 238
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 239
    .line 240
    .line 241
    iget-object v8, v7, Lcom/android/calendar/homepage/l0;->p2:Lcom/miui/calendar/util/c1;

    .line 242
    .line 243
    invoke-virtual {v8}, Lcom/miui/calendar/util/c1;->f()Z

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    if-eqz v8, :cond_5

    .line 248
    .line 249
    iget-object v2, v7, Lcom/android/calendar/homepage/l0;->p2:Lcom/miui/calendar/util/c1;

    .line 250
    .line 251
    invoke-virtual {v2}, Lcom/miui/calendar/util/c1;->e()F

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    goto :goto_1

    .line 256
    :cond_5
    iget-boolean v8, v7, Lcom/android/calendar/homepage/l0;->r2:Z

    .line 257
    .line 258
    if-eqz v8, :cond_6

    .line 259
    .line 260
    move v2, v1

    .line 261
    :cond_6
    :goto_1
    iget-boolean v8, v7, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 262
    .line 263
    if-eqz v8, :cond_7

    .line 264
    .line 265
    iget v1, v6, Landroid/graphics/Rect;->top:I

    .line 266
    .line 267
    int-to-float v1, v1

    .line 268
    iget v8, v7, Lcom/android/calendar/homepage/l0;->j0:I

    .line 269
    .line 270
    iget v9, v7, Lcom/android/calendar/homepage/l0;->h0:I

    .line 271
    .line 272
    sub-int/2addr v8, v9

    .line 273
    int-to-float v8, v8

    .line 274
    mul-float/2addr v8, v2

    .line 275
    add-float/2addr v1, v8

    .line 276
    float-to-int v1, v1

    .line 277
    iput v1, v6, Landroid/graphics/Rect;->top:I

    .line 278
    .line 279
    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    .line 280
    .line 281
    int-to-float v1, v1

    .line 282
    iget v8, v7, Lcom/android/calendar/homepage/l0;->k0:I

    .line 283
    .line 284
    iget v9, v7, Lcom/android/calendar/homepage/l0;->i0:I

    .line 285
    .line 286
    sub-int/2addr v8, v9

    .line 287
    int-to-float v8, v8

    .line 288
    mul-float/2addr v2, v8

    .line 289
    add-float/2addr v1, v2

    .line 290
    float-to-int v1, v1

    .line 291
    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    .line 292
    .line 293
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    iget-object v2, v7, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 298
    .line 299
    iget-object v2, v2, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 300
    .line 301
    sget-object v8, Lcom/android/calendar/common/Utils$DisplayType;->TEXT:Lcom/android/calendar/common/Utils$DisplayType;

    .line 302
    .line 303
    invoke-static {v1, v2, v4, v8}, Lcom/android/calendar/common/Utils;->h1(Landroid/content/res/Resources;Lcom/android/calendar/common/event/schema/Event;Landroid/graphics/Paint;Lcom/android/calendar/common/Utils$DisplayType;)V

    .line 304
    .line 305
    .line 306
    const/16 v1, 0xff

    .line 307
    .line 308
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 309
    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_7
    iget v8, v7, Lcom/android/calendar/homepage/l0;->p0:F

    .line 313
    .line 314
    mul-float/2addr v8, v2

    .line 315
    const v9, 0x3e4ccccd    # 0.2f

    .line 316
    .line 317
    .line 318
    mul-float/2addr v8, v9

    .line 319
    iget v10, v7, Lcom/android/calendar/homepage/l0;->q0:F

    .line 320
    .line 321
    mul-float/2addr v10, v2

    .line 322
    mul-float/2addr v10, v9

    .line 323
    iget v9, v6, Landroid/graphics/Rect;->left:I

    .line 324
    .line 325
    int-to-float v9, v9

    .line 326
    add-float/2addr v9, v8

    .line 327
    float-to-int v9, v9

    .line 328
    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 329
    .line 330
    iget v9, v6, Landroid/graphics/Rect;->right:I

    .line 331
    .line 332
    int-to-float v9, v9

    .line 333
    add-float/2addr v9, v8

    .line 334
    float-to-int v8, v9

    .line 335
    iput v8, v6, Landroid/graphics/Rect;->right:I

    .line 336
    .line 337
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 338
    .line 339
    int-to-float v8, v8

    .line 340
    add-float/2addr v8, v10

    .line 341
    float-to-int v8, v8

    .line 342
    iput v8, v6, Landroid/graphics/Rect;->top:I

    .line 343
    .line 344
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 345
    .line 346
    int-to-float v8, v8

    .line 347
    add-float/2addr v8, v10

    .line 348
    float-to-int v8, v8

    .line 349
    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 350
    .line 351
    sub-float/2addr v1, v2

    .line 352
    int-to-float v2, v0

    .line 353
    mul-float/2addr v2, v1

    .line 354
    float-to-int v1, v2

    .line 355
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 356
    .line 357
    .line 358
    :goto_2
    iget v1, v7, Lcom/android/calendar/homepage/l0;->B2:I

    .line 359
    .line 360
    int-to-float v14, v1

    .line 361
    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 362
    .line 363
    int-to-float v9, v1

    .line 364
    iget v1, v6, Landroid/graphics/Rect;->top:I

    .line 365
    .line 366
    int-to-float v10, v1

    .line 367
    iget v1, v6, Landroid/graphics/Rect;->right:I

    .line 368
    .line 369
    int-to-float v11, v1

    .line 370
    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    .line 371
    .line 372
    int-to-float v12, v1

    .line 373
    move-object/from16 v8, p2

    .line 374
    .line 375
    move v13, v14

    .line 376
    move v1, v15

    .line 377
    move-object/from16 v15, p3

    .line 378
    .line 379
    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 380
    .line 381
    .line 382
    iget-boolean v2, v7, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 383
    .line 384
    const/4 v8, -0x1

    .line 385
    if-eqz v2, :cond_8

    .line 386
    .line 387
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    iget-object v9, v7, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 392
    .line 393
    iget-object v9, v9, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 394
    .line 395
    sget-object v10, Lcom/android/calendar/common/Utils$DisplayType;->ACCOUNT:Lcom/android/calendar/common/Utils$DisplayType;

    .line 396
    .line 397
    invoke-static {v2, v9, v4, v10}, Lcom/android/calendar/common/Utils;->h1(Landroid/content/res/Resources;Lcom/android/calendar/common/event/schema/Event;Landroid/graphics/Paint;Lcom/android/calendar/common/Utils$DisplayType;)V

    .line 398
    .line 399
    .line 400
    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 401
    .line 402
    int-to-float v2, v2

    .line 403
    iget v9, v6, Landroid/graphics/Rect;->top:I

    .line 404
    .line 405
    int-to-float v9, v9

    .line 406
    sget v10, Lcom/android/calendar/homepage/l0;->T3:I

    .line 407
    .line 408
    int-to-float v10, v10

    .line 409
    invoke-virtual {v5, v2, v9, v10, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 410
    .line 411
    .line 412
    iget v2, v6, Landroid/graphics/Rect;->left:I

    .line 413
    .line 414
    int-to-float v2, v2

    .line 415
    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 416
    .line 417
    int-to-float v9, v9

    .line 418
    sget v10, Lcom/android/calendar/homepage/l0;->T3:I

    .line 419
    .line 420
    int-to-float v10, v10

    .line 421
    invoke-virtual {v5, v2, v9, v10, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 425
    .line 426
    .line 427
    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 428
    .line 429
    int-to-float v2, v2

    .line 430
    iget v9, v6, Landroid/graphics/Rect;->top:I

    .line 431
    .line 432
    int-to-float v9, v9

    .line 433
    sget v10, Lcom/android/calendar/homepage/l0;->U3:I

    .line 434
    .line 435
    int-to-float v10, v10

    .line 436
    invoke-virtual {v5, v2, v9, v10, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 437
    .line 438
    .line 439
    iget v2, v6, Landroid/graphics/Rect;->left:I

    .line 440
    .line 441
    int-to-float v2, v2

    .line 442
    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 443
    .line 444
    int-to-float v9, v9

    .line 445
    sget v10, Lcom/android/calendar/homepage/l0;->U3:I

    .line 446
    .line 447
    int-to-float v10, v10

    .line 448
    invoke-virtual {v5, v2, v9, v10, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 449
    .line 450
    .line 451
    :cond_8
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 452
    .line 453
    .line 454
    iget-boolean v0, v7, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 455
    .line 456
    if-eqz v0, :cond_b

    .line 457
    .line 458
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 459
    .line 460
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 461
    .line 462
    .line 463
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 464
    .line 465
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 466
    .line 467
    .line 468
    invoke-direct {v7, v6, v4}, Lcom/android/calendar/homepage/l0;->Y1(Landroid/graphics/Rect;Landroid/graphics/Paint;)I

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getTextSize()F

    .line 473
    .line 474
    .line 475
    move-result v9

    .line 476
    int-to-float v0, v0

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getTextSize()F

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    cmpg-float v1, v0, v1

    .line 482
    .line 483
    if-gez v1, :cond_9

    .line 484
    .line 485
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 486
    .line 487
    .line 488
    :cond_9
    iget-object v1, v7, Lcom/android/calendar/homepage/l0;->V:[Landroid/text/StaticLayout;

    .line 489
    .line 490
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->getEditingEventIndex()I

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    iget-object v0, v7, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 495
    .line 496
    iget-object v3, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 497
    .line 498
    move-object/from16 v0, p0

    .line 499
    .line 500
    move-object v10, v4

    .line 501
    move-object/from16 v4, p3

    .line 502
    .line 503
    move-object v11, v5

    .line 504
    move-object/from16 v5, p1

    .line 505
    .line 506
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/homepage/l0;->n1([Landroid/text/StaticLayout;ILcom/android/calendar/common/event/schema/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    if-nez v1, :cond_a

    .line 511
    .line 512
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 513
    .line 514
    const-string v1, "drawDraggingRect(): layout is NULL, return"

    .line 515
    .line 516
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    return-void

    .line 520
    :cond_a
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 525
    .line 526
    .line 527
    iget v0, v7, Lcom/android/calendar/homepage/l0;->T0:I

    .line 528
    .line 529
    add-int/lit8 v4, v0, 0x4

    .line 530
    .line 531
    iget v2, v7, Lcom/android/calendar/homepage/l0;->V0:I

    .line 532
    .line 533
    add-int/2addr v0, v2

    .line 534
    sget v2, Lcom/android/calendar/homepage/l0;->B4:I

    .line 535
    .line 536
    sub-int/2addr v0, v2

    .line 537
    iget v2, v7, Lcom/android/calendar/homepage/l0;->h1:I

    .line 538
    .line 539
    sub-int v5, v0, v2

    .line 540
    .line 541
    const/4 v8, 0x0

    .line 542
    move-object/from16 v0, p0

    .line 543
    .line 544
    move-object/from16 v2, p1

    .line 545
    .line 546
    move-object/from16 v3, p2

    .line 547
    .line 548
    move v6, v8

    .line 549
    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/homepage/l0;->d1(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIZ)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 553
    .line 554
    .line 555
    goto/16 :goto_4

    .line 556
    .line 557
    :cond_b
    move-object v10, v4

    .line 558
    move-object v11, v5

    .line 559
    sget v0, Lcom/android/calendar/homepage/l0;->t4:I

    .line 560
    .line 561
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 562
    .line 563
    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->G1()Z

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    if-eqz v0, :cond_c

    .line 569
    .line 570
    iget v0, v6, Landroid/graphics/Rect;->right:I

    .line 571
    .line 572
    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 573
    .line 574
    sub-int/2addr v0, v1

    .line 575
    sget-object v2, Lcom/android/calendar/homepage/l0;->u4:Landroid/graphics/drawable/Drawable;

    .line 576
    .line 577
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    sub-int/2addr v0, v2

    .line 582
    div-int/2addr v0, v3

    .line 583
    add-int/2addr v1, v0

    .line 584
    iget v0, v6, Landroid/graphics/Rect;->top:I

    .line 585
    .line 586
    sget v2, Lcom/android/calendar/homepage/l0;->x4:I

    .line 587
    .line 588
    sget-object v4, Lcom/android/calendar/homepage/l0;->u4:Landroid/graphics/drawable/Drawable;

    .line 589
    .line 590
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    sub-int/2addr v2, v4

    .line 595
    div-int/2addr v2, v3

    .line 596
    add-int/2addr v0, v2

    .line 597
    sget-object v2, Lcom/android/calendar/homepage/l0;->u4:Landroid/graphics/drawable/Drawable;

    .line 598
    .line 599
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 600
    .line 601
    .line 602
    move-result v3

    .line 603
    add-int/2addr v3, v1

    .line 604
    sget-object v4, Lcom/android/calendar/homepage/l0;->u4:Landroid/graphics/drawable/Drawable;

    .line 605
    .line 606
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 607
    .line 608
    .line 609
    move-result v4

    .line 610
    add-int/2addr v4, v0

    .line 611
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 612
    .line 613
    .line 614
    sget-object v0, Lcom/android/calendar/homepage/l0;->u4:Landroid/graphics/drawable/Drawable;

    .line 615
    .line 616
    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 617
    .line 618
    .line 619
    goto :goto_4

    .line 620
    :cond_c
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 621
    .line 622
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 623
    .line 624
    .line 625
    sget v0, Lcom/android/calendar/homepage/l0;->f4:I

    .line 626
    .line 627
    int-to-float v0, v0

    .line 628
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 629
    .line 630
    .line 631
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 632
    .line 633
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 634
    .line 635
    .line 636
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 641
    .line 642
    .line 643
    iget-object v0, v7, Lcom/android/calendar/homepage/l0;->m2:Ljava/lang/String;

    .line 644
    .line 645
    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 646
    .line 647
    iget v2, v7, Lcom/android/calendar/homepage/l0;->N0:I

    .line 648
    .line 649
    add-int/2addr v1, v2

    .line 650
    int-to-float v1, v1

    .line 651
    iget v2, v6, Landroid/graphics/Rect;->top:I

    .line 652
    .line 653
    int-to-float v2, v2

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 655
    .line 656
    .line 657
    move-result-object v3

    .line 658
    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 659
    .line 660
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 661
    .line 662
    .line 663
    move-result v3

    .line 664
    add-float/2addr v2, v3

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->G1()Z

    .line 666
    .line 667
    .line 668
    move-result v3

    .line 669
    if-eqz v3, :cond_d

    .line 670
    .line 671
    sget v3, Lcom/android/calendar/homepage/l0;->X3:I

    .line 672
    .line 673
    goto :goto_3

    .line 674
    :cond_d
    iget v3, v7, Lcom/android/calendar/homepage/l0;->G2:I

    .line 675
    .line 676
    :goto_3
    int-to-float v3, v3

    .line 677
    add-float/2addr v2, v3

    .line 678
    invoke-virtual {v11, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 679
    .line 680
    .line 681
    :cond_e
    :goto_4
    return-void

    .line 682
    nop

    .line 683
    :array_0
    .array-data 4
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method

.method public c2(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->t2:I

    .line 2
    .line 3
    iput p2, p0, Lcom/android/calendar/homepage/l0;->u2:I

    .line 4
    .line 5
    iput p3, p0, Lcom/android/calendar/homepage/l0;->v2:I

    .line 6
    .line 7
    sget-object p1, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string p3, "updateAllDayHeight mCurAllDayOffset:"

    .line 15
    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget p3, p0, Lcom/android/calendar/homepage/l0;->s2:I

    .line 20
    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p3, " mCurAllDayCollapseHeight:"

    .line 25
    .line 26
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget p3, p0, Lcom/android/calendar/homepage/l0;->t2:I

    .line 30
    .line 31
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p3, " mCurAllDayExpandHeight:"

    .line 35
    .line 36
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget p3, p0, Lcom/android/calendar/homepage/l0;->u2:I

    .line 40
    .line 41
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {p1, p2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method protected e1(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v0, p2

    .line 6
    .line 7
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget v1, v7, Lcom/android/calendar/homepage/l0;->m1:I

    .line 14
    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    sub-int/2addr v1, v0

    .line 18
    invoke-virtual {v7, v1}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v7, v0}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    move v9, v0

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->getCellWidth()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    sget v0, Lcom/android/calendar/homepage/l0;->x4:I

    .line 35
    .line 36
    iget-object v11, v7, Lcom/android/calendar/homepage/l0;->B0:Landroid/graphics/Rect;

    .line 37
    .line 38
    iget v1, v7, Lcom/android/calendar/homepage/l0;->b0:I

    .line 39
    .line 40
    sget v2, Lcom/android/calendar/homepage/l0;->h3:I

    .line 41
    .line 42
    add-int/2addr v2, v0

    .line 43
    mul-int/2addr v1, v2

    .line 44
    add-int v1, p3, v1

    .line 45
    .line 46
    iput v1, v11, Landroid/graphics/Rect;->top:I

    .line 47
    .line 48
    add-int/2addr v1, v0

    .line 49
    iput v1, v11, Landroid/graphics/Rect;->bottom:I

    .line 50
    .line 51
    iput v9, v11, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    add-int v0, v9, v10

    .line 54
    .line 55
    iput v0, v11, Landroid/graphics/Rect;->right:I

    .line 56
    .line 57
    iget-object v12, v7, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    iget-object v14, v7, Lcom/android/calendar/homepage/l0;->M0:Lcom/android/calendar/homepage/j0;

    .line 64
    .line 65
    iget v0, v7, Lcom/android/calendar/homepage/l0;->T0:I

    .line 66
    .line 67
    iget v1, v7, Lcom/android/calendar/homepage/l0;->V0:I

    .line 68
    .line 69
    add-int/2addr v0, v1

    .line 70
    sget v1, Lcom/android/calendar/homepage/l0;->B4:I

    .line 71
    .line 72
    sub-int/2addr v0, v1

    .line 73
    iget v1, v7, Lcom/android/calendar/homepage/l0;->h1:I

    .line 74
    .line 75
    sub-int v15, v0, v1

    .line 76
    .line 77
    iget-object v6, v7, Lcom/android/calendar/homepage/l0;->E0:Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    const/4 v0, 0x0

    .line 84
    move v4, v0

    .line 85
    :goto_1
    if-ge v4, v13, :cond_8

    .line 86
    .line 87
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    move-object v3, v0

    .line 92
    check-cast v3, Lcom/android/calendar/homepage/l0$l;

    .line 93
    .line 94
    invoke-virtual {v7, v3}, Lcom/android/calendar/homepage/l0;->q1(Lcom/android/calendar/homepage/l0$l;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    .line 100
    .line 101
    move-object v0, v14

    .line 102
    move/from16 v1, p1

    .line 103
    .line 104
    move v2, v9

    .line 105
    move-object/from16 p2, v3

    .line 106
    .line 107
    move/from16 v3, p3

    .line 108
    .line 109
    move/from16 v16, v4

    .line 110
    .line 111
    move v4, v10

    .line 112
    move/from16 v17, v9

    .line 113
    .line 114
    move v9, v5

    .line 115
    move-object/from16 v5, p2

    .line 116
    .line 117
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/homepage/j0;->a(IIIILcom/android/calendar/homepage/l0$l;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_1

    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_1
    move-object/from16 v5, p2

    .line 126
    .line 127
    iget v0, v5, Lcom/android/calendar/homepage/l0$l;->e:F

    .line 128
    .line 129
    iget v1, v7, Lcom/android/calendar/homepage/l0;->T0:I

    .line 130
    .line 131
    int-to-float v1, v1

    .line 132
    cmpg-float v0, v0, v1

    .line 133
    .line 134
    if-ltz v0, :cond_6

    .line 135
    .line 136
    iget v0, v5, Lcom/android/calendar/homepage/l0$l;->d:F

    .line 137
    .line 138
    int-to-float v1, v15

    .line 139
    cmpl-float v0, v0, v1

    .line 140
    .line 141
    if-lez v0, :cond_2

    .line 142
    .line 143
    goto/16 :goto_2

    .line 144
    .line 145
    :cond_2
    iget v0, v7, Lcom/android/calendar/homepage/l0;->a0:I

    .line 146
    .line 147
    if-ne v8, v0, :cond_3

    .line 148
    .line 149
    iget-boolean v0, v7, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 150
    .line 151
    if-nez v0, :cond_3

    .line 152
    .line 153
    iget-boolean v0, v7, Lcom/android/calendar/homepage/l0;->w1:Z

    .line 154
    .line 155
    if-eqz v0, :cond_3

    .line 156
    .line 157
    invoke-virtual {v14, v5, v11}, Lcom/android/calendar/homepage/j0;->b(Lcom/android/calendar/homepage/l0$l;Landroid/graphics/Rect;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_3

    .line 162
    .line 163
    iget-object v0, v7, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    :cond_3
    iget v4, v7, Lcom/android/calendar/homepage/l0;->T0:I

    .line 169
    .line 170
    move-object/from16 v0, p0

    .line 171
    .line 172
    move-object v1, v5

    .line 173
    move-object/from16 v2, p4

    .line 174
    .line 175
    move-object/from16 v3, p5

    .line 176
    .line 177
    move/from16 p2, v10

    .line 178
    .line 179
    move-object v10, v5

    .line 180
    move v5, v15

    .line 181
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/homepage/l0;->c1(Lcom/android/calendar/homepage/l0$l;Landroid/graphics/Canvas;Landroid/graphics/Paint;II)Landroid/graphics/Rect;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    iget v0, v5, Landroid/graphics/Rect;->top:I

    .line 186
    .line 187
    if-gt v0, v15, :cond_7

    .line 188
    .line 189
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 190
    .line 191
    iget v1, v7, Lcom/android/calendar/homepage/l0;->T0:I

    .line 192
    .line 193
    if-ge v0, v1, :cond_4

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_4
    invoke-direct {v7, v5, v6}, Lcom/android/calendar/homepage/l0;->Y1(Landroid/graphics/Rect;Landroid/graphics/Paint;)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    sget v1, Lcom/android/calendar/homepage/l0;->G3:I

    .line 201
    .line 202
    if-lt v0, v1, :cond_7

    .line 203
    .line 204
    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    int-to-float v0, v0

    .line 209
    cmpg-float v1, v0, v4

    .line 210
    .line 211
    if-gez v1, :cond_5

    .line 212
    .line 213
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 214
    .line 215
    .line 216
    :cond_5
    iget-object v1, v7, Lcom/android/calendar/homepage/l0;->V:[Landroid/text/StaticLayout;

    .line 217
    .line 218
    iget-object v3, v10, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 219
    .line 220
    move-object/from16 v0, p0

    .line 221
    .line 222
    move/from16 v2, v16

    .line 223
    .line 224
    move-object/from16 v18, v11

    .line 225
    .line 226
    move v11, v4

    .line 227
    move-object v4, v6

    .line 228
    move-object/from16 v19, v5

    .line 229
    .line 230
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/homepage/l0;->n1([Landroid/text/StaticLayout;ILcom/android/calendar/common/event/schema/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v2, v10, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 239
    .line 240
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    sget-object v4, Lcom/android/calendar/common/Utils$DisplayType;->TEXT:Lcom/android/calendar/common/Utils$DisplayType;

    .line 245
    .line 246
    invoke-static {v0, v2, v3, v4}, Lcom/android/calendar/common/Utils;->h1(Landroid/content/res/Resources;Lcom/android/calendar/common/event/schema/Event;Landroid/graphics/Paint;Lcom/android/calendar/common/Utils$DisplayType;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v7, v10}, Lcom/android/calendar/homepage/l0;->q1(Lcom/android/calendar/homepage/l0$l;)I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 258
    .line 259
    .line 260
    iget v0, v7, Lcom/android/calendar/homepage/l0;->T0:I

    .line 261
    .line 262
    add-int/lit8 v4, v0, 0x4

    .line 263
    .line 264
    iget v2, v7, Lcom/android/calendar/homepage/l0;->V0:I

    .line 265
    .line 266
    add-int/2addr v0, v2

    .line 267
    sget v2, Lcom/android/calendar/homepage/l0;->B4:I

    .line 268
    .line 269
    sub-int/2addr v0, v2

    .line 270
    iget v2, v7, Lcom/android/calendar/homepage/l0;->h1:I

    .line 271
    .line 272
    sub-int v5, v0, v2

    .line 273
    .line 274
    const/4 v10, 0x0

    .line 275
    move-object/from16 v0, p0

    .line 276
    .line 277
    move-object/from16 v2, v19

    .line 278
    .line 279
    move-object/from16 v3, p4

    .line 280
    .line 281
    move-object/from16 v19, v12

    .line 282
    .line 283
    move-object v12, v6

    .line 284
    move v6, v10

    .line 285
    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/homepage/l0;->d1(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIZ)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 289
    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_6
    :goto_2
    move/from16 p2, v10

    .line 293
    .line 294
    :cond_7
    :goto_3
    move-object/from16 v18, v11

    .line 295
    .line 296
    move-object/from16 v19, v12

    .line 297
    .line 298
    move-object v12, v6

    .line 299
    :goto_4
    add-int/lit8 v4, v16, 0x1

    .line 300
    .line 301
    move/from16 v10, p2

    .line 302
    .line 303
    move v5, v9

    .line 304
    move-object v6, v12

    .line 305
    move/from16 v9, v17

    .line 306
    .line 307
    move-object/from16 v11, v18

    .line 308
    .line 309
    move-object/from16 v12, v19

    .line 310
    .line 311
    goto/16 :goto_1

    .line 312
    .line 313
    :cond_8
    move v9, v5

    .line 314
    move-object v12, v6

    .line 315
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 316
    .line 317
    .line 318
    iget v0, v7, Lcom/android/calendar/homepage/l0;->a0:I

    .line 319
    .line 320
    if-ne v8, v0, :cond_9

    .line 321
    .line 322
    iget-boolean v0, v7, Lcom/android/calendar/homepage/l0;->r0:Z

    .line 323
    .line 324
    if-nez v0, :cond_9

    .line 325
    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_9

    .line 331
    .line 332
    iget v0, v7, Lcom/android/calendar/homepage/l0;->O1:I

    .line 333
    .line 334
    if-eqz v0, :cond_9

    .line 335
    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->J0()V

    .line 337
    .line 338
    .line 339
    :cond_9
    return-void
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
.end method

.method protected f1(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    .line 1
    sget-object p1, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "drawHours"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p3}, Lcom/android/calendar/homepage/l0;->setupHourTextPaint(Landroid/graphics/Paint;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p3}, Lcom/android/calendar/homepage/l0;->D0(Landroid/graphics/Paint;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/android/calendar/homepage/l0;->J2:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/miui/calendar/util/x0;->z(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/calendar/homepage/l0;->l1(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sget v1, Lcom/android/calendar/homepage/l0;->h3:I

    .line 28
    .line 29
    iget v2, p0, Lcom/android/calendar/homepage/l0;->f1:I

    .line 30
    .line 31
    add-int/2addr v1, v2

    .line 32
    sget v2, Lcom/android/calendar/homepage/l0;->p3:I

    .line 33
    .line 34
    add-int/2addr v1, v2

    .line 35
    iget v2, p0, Lcom/android/calendar/homepage/l0;->N1:I

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    if-ne v2, v3, :cond_0

    .line 39
    .line 40
    iget v2, p0, Lcom/android/calendar/homepage/l0;->e0:I

    .line 41
    .line 42
    iput v2, p0, Lcom/android/calendar/homepage/l0;->m:I

    .line 43
    .line 44
    iget v2, p0, Lcom/android/calendar/homepage/l0;->g0:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget v2, p0, Lcom/android/calendar/homepage/l0;->d0:I

    .line 48
    .line 49
    iput v2, p0, Lcom/android/calendar/homepage/l0;->m:I

    .line 50
    .line 51
    iget v2, p0, Lcom/android/calendar/homepage/l0;->f0:I

    .line 52
    .line 53
    :goto_0
    mul-int/lit8 v2, v2, 0xf

    .line 54
    .line 55
    :goto_1
    const/16 v3, 0x18

    .line 56
    .line 57
    if-ge p1, v3, :cond_3

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->r1:[Ljava/lang/String;

    .line 60
    .line 61
    aget-object v3, v3, p1

    .line 62
    .line 63
    iget-boolean v4, p0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 64
    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    iget v4, p0, Lcom/android/calendar/homepage/l0;->m:I

    .line 68
    .line 69
    if-ne v4, p1, :cond_1

    .line 70
    .line 71
    int-to-float v4, v0

    .line 72
    int-to-float v5, v1

    .line 73
    invoke-virtual {p2, v3, v4, v5, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 74
    .line 75
    .line 76
    sget v3, Lcom/android/calendar/homepage/l0;->x4:I

    .line 77
    .line 78
    sget v5, Lcom/android/calendar/homepage/l0;->h3:I

    .line 79
    .line 80
    add-int/2addr v3, v5

    .line 81
    mul-int/lit8 v3, v3, 0x2

    .line 82
    .line 83
    div-int/lit8 v3, v3, 0x5

    .line 84
    .line 85
    add-int/2addr v3, v1

    .line 86
    new-instance v5, Ljava/text/DecimalFormat;

    .line 87
    .line 88
    const-string v6, "00"

    .line 89
    .line 90
    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v7, ":"

    .line 99
    .line 100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    int-to-long v7, v2

    .line 104
    invoke-virtual {v5, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    int-to-float v3, v3

    .line 116
    invoke-virtual {p2, v5, v4, v3, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_1
    int-to-float v4, v1

    .line 121
    invoke-virtual {p0, p1, v4, p3}, Lcom/android/calendar/homepage/l0;->E1(IFLandroid/graphics/Paint;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-nez v5, :cond_2

    .line 126
    .line 127
    int-to-float v5, v0

    .line 128
    invoke-virtual {p2, v3, v5, v4, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    iput p1, p0, Lcom/android/calendar/homepage/l0;->J2:I

    .line 133
    .line 134
    :goto_2
    sget v3, Lcom/android/calendar/homepage/l0;->x4:I

    .line 135
    .line 136
    sget v4, Lcom/android/calendar/homepage/l0;->h3:I

    .line 137
    .line 138
    add-int/2addr v3, v4

    .line 139
    add-int/2addr v1, v3

    .line 140
    add-int/lit8 p1, p1, 0x1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    return-void
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method

.method protected getCellWidth()I
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/calendar/homepage/l0;->G0(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    return v0
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected getEffectiveWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->W0:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/calendar/homepage/l0;->I2:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/android/calendar/homepage/l0;->D2:I

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    return v0
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected getEventTextLeftMargin()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->G1()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x2

    .line 14
    :goto_0
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->u(Landroid/content/Context;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected getEventTextTopMargin()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->G1()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x2

    .line 14
    :goto_0
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->v(Landroid/content/Context;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public getEventsAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->G:I

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected getEventsEndMargin()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/miui/calendar/util/x0;->w(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method getFirstVisibleHour()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->p1:I

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method getFirstVisibleHourOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->q1:I

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected getHourStrs()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->u1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/calendar/homepage/e0;->b:[Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/android/calendar/homepage/e0;->a:[Ljava/lang/String;

    .line 9
    .line 10
    :goto_0
    return-object v0
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method getNumHours()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->n1:I

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method getSelectedHourInMillis()J
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Lcom/miui/calendar/util/r0;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->G(I)J

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->F(I)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    return-wide v0
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method getSelectedTime()Lcom/miui/calendar/util/r0;
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Lcom/miui/calendar/util/r0;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->G(I)J

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->F(I)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method getSelectedTimeForAccessibility()Lcom/miui/calendar/util/r0;
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Lcom/miui/calendar/util/r0;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/calendar/homepage/l0;->s0:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->G(I)J

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/android/calendar/homepage/l0;->t0:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->F(I)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method getSelectedTimeInMillis()J
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Lcom/miui/calendar/util/r0;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->G(I)J

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/android/calendar/homepage/l0;->b0:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->F(I)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/calendar/homepage/l0;->c0:I

    .line 19
    .line 20
    mul-int/lit8 v1, v1, 0x3c

    .line 21
    .line 22
    div-int/lit8 v1, v1, 0x4

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->H(I)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    return-wide v0
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method protected getTimeLineHourWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/miui/calendar/util/x0;->x(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public i2(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->w2:I

    .line 2
    .line 3
    iput p2, p0, Lcom/android/calendar/homepage/l0;->v2:I

    .line 4
    .line 5
    sget-object p1, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 6
    .line 7
    const-string p2, "updateSwitchDeltaHeight mSwitchDeltaY:$mSwitchDeltaY mAllDayPagerState:$mAllDayPagerState"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method protected l1(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/android/calendar/homepage/l0;->W0:I

    .line 9
    .line 10
    sub-int p1, v0, p1

    .line 11
    .line 12
    :goto_0
    return p1
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected o1(Landroid/graphics/Paint;)Landroid/text/style/AbsoluteSizeSpan;
    .locals 5

    .line 1
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    float-to-double v1, p1

    .line 8
    const-wide v3, 0x3fe999999999999aL    # 0.8

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    mul-double/2addr v1, v3

    .line 14
    double-to-int p1, v1

    .line 15
    invoke-direct {v0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 16
    .line 17
    .line 18
    return-object v0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->d:Landroid/os/Handler;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/calendar/homepage/l0;->d:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->k:Lcom/android/calendar/homepage/l0$q;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v0, Lcom/android/calendar/event/j;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/android/calendar/event/j;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/calendar/homepage/l0;->M:Lcom/android/calendar/event/j;

    .line 27
    .line 28
    return-void
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->J0:Landroid/view/View;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->b2(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/calendar/homepage/l0;->N2:I

    .line 5
    .line 6
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 7
    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    iput p1, p0, Lcom/android/calendar/homepage/l0;->N2:I

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->J1()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/android/calendar/homepage/l0;->O1:I

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    if-eq v2, v3, :cond_0

    .line 9
    .line 10
    invoke-direct {v0, v3}, Lcom/android/calendar/homepage/l0;->setSelectionMode(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->getSelectedTimeInMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v7

    .line 20
    const/16 v9, 0x1403

    .line 21
    .line 22
    iget-object v4, v0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 23
    .line 24
    move-wide v5, v7

    .line 25
    invoke-static/range {v4 .. v9}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/homepage/l0;->G1()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const v6, 0x7f1201cb

    .line 43
    .line 44
    .line 45
    const/16 v7, 0x8

    .line 46
    .line 47
    const/16 v8, 0x65

    .line 48
    .line 49
    const v9, 0x108003e

    .line 50
    .line 51
    .line 52
    const v10, 0x7f1201cc

    .line 53
    .line 54
    .line 55
    const/4 v11, 0x7

    .line 56
    const/4 v12, 0x2

    .line 57
    const v13, 0x1080041

    .line 58
    .line 59
    .line 60
    const v14, 0x7f1201e0

    .line 61
    .line 62
    .line 63
    const/4 v15, 0x5

    .line 64
    const/4 v3, 0x1

    .line 65
    const/4 v5, 0x0

    .line 66
    if-nez v4, :cond_4

    .line 67
    .line 68
    if-lt v2, v3, :cond_3

    .line 69
    .line 70
    invoke-interface {v1, v5, v15, v5, v14}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v4, v0, Lcom/android/calendar/homepage/l0;->K1:Lcom/android/calendar/homepage/l0$j;

    .line 75
    .line 76
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 77
    .line 78
    .line 79
    invoke-interface {v2, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 80
    .line 81
    .line 82
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 83
    .line 84
    iget-object v4, v0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 85
    .line 86
    iget-object v4, v4, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 87
    .line 88
    invoke-static {v2, v4}, Lcom/android/calendar/homepage/l0;->m1(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-ne v2, v12, :cond_1

    .line 93
    .line 94
    invoke-interface {v1, v5, v11, v5, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iget-object v10, v0, Lcom/android/calendar/homepage/l0;->K1:Lcom/android/calendar/homepage/l0$j;

    .line 99
    .line 100
    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 101
    .line 102
    .line 103
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 104
    .line 105
    .line 106
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 107
    .line 108
    .line 109
    :cond_1
    if-lt v2, v3, :cond_2

    .line 110
    .line 111
    invoke-interface {v1, v5, v7, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iget-object v3, v0, Lcom/android/calendar/homepage/l0;->K1:Lcom/android/calendar/homepage/l0$j;

    .line 116
    .line 117
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 118
    .line 119
    .line 120
    const v3, 0x108003c

    .line 121
    .line 122
    .line 123
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 124
    .line 125
    .line 126
    :cond_2
    const v2, 0x7f1201c8

    .line 127
    .line 128
    .line 129
    const/4 v3, 0x6

    .line 130
    invoke-interface {v1, v5, v3, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->K1:Lcom/android/calendar/homepage/l0$j;

    .line 135
    .line 136
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 137
    .line 138
    .line 139
    const v4, 0x1080033

    .line 140
    .line 141
    .line 142
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 143
    .line 144
    .line 145
    const/16 v6, 0x6e

    .line 146
    .line 147
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 148
    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_3
    const v2, 0x7f1201c8

    .line 153
    .line 154
    .line 155
    const/4 v3, 0x6

    .line 156
    const v4, 0x1080033

    .line 157
    .line 158
    .line 159
    const/16 v6, 0x6e

    .line 160
    .line 161
    invoke-interface {v1, v5, v3, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->K1:Lcom/android/calendar/homepage/l0$j;

    .line 166
    .line 167
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 168
    .line 169
    .line 170
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 171
    .line 172
    .line 173
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_4
    if-lt v2, v3, :cond_6

    .line 178
    .line 179
    invoke-interface {v1, v5, v15, v5, v14}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    iget-object v4, v0, Lcom/android/calendar/homepage/l0;->K1:Lcom/android/calendar/homepage/l0$j;

    .line 184
    .line 185
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 186
    .line 187
    .line 188
    invoke-interface {v2, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 189
    .line 190
    .line 191
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 192
    .line 193
    iget-object v4, v0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 194
    .line 195
    iget-object v4, v4, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 196
    .line 197
    invoke-static {v2, v4}, Lcom/android/calendar/homepage/l0;->m1(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-ne v2, v12, :cond_5

    .line 202
    .line 203
    invoke-interface {v1, v5, v11, v5, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    iget-object v10, v0, Lcom/android/calendar/homepage/l0;->K1:Lcom/android/calendar/homepage/l0$j;

    .line 208
    .line 209
    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 210
    .line 211
    .line 212
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 213
    .line 214
    .line 215
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 216
    .line 217
    .line 218
    :cond_5
    if-lt v2, v3, :cond_6

    .line 219
    .line 220
    invoke-interface {v1, v5, v7, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    iget-object v3, v0, Lcom/android/calendar/homepage/l0;->K1:Lcom/android/calendar/homepage/l0$j;

    .line 225
    .line 226
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 227
    .line 228
    .line 229
    const v3, 0x108003c

    .line 230
    .line 231
    .line 232
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 233
    .line 234
    .line 235
    :cond_6
    const v2, 0x7f1201c8

    .line 236
    .line 237
    .line 238
    const/4 v3, 0x6

    .line 239
    invoke-interface {v1, v5, v3, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    iget-object v3, v0, Lcom/android/calendar/homepage/l0;->K1:Lcom/android/calendar/homepage/l0$j;

    .line 244
    .line 245
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 246
    .line 247
    .line 248
    const v3, 0x1080033

    .line 249
    .line 250
    .line 251
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 252
    .line 253
    .line 254
    const/16 v3, 0x6e

    .line 255
    .line 256
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 257
    .line 258
    .line 259
    const v2, 0x7f120596

    .line 260
    .line 261
    .line 262
    const/4 v3, 0x3

    .line 263
    invoke-interface {v1, v5, v3, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    iget-object v2, v0, Lcom/android/calendar/homepage/l0;->K1:Lcom/android/calendar/homepage/l0$j;

    .line 268
    .line 269
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 270
    .line 271
    .line 272
    const v2, 0x108003b

    .line 273
    .line 274
    .line 275
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 276
    .line 277
    .line 278
    const/16 v2, 0x64

    .line 279
    .line 280
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 281
    .line 282
    .line 283
    :goto_0
    iget-object v1, v0, Lcom/android/calendar/homepage/l0;->I0:Landroid/widget/PopupWindow;

    .line 284
    .line 285
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 286
    .line 287
    .line 288
    return-void
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->P:Lmiuix/appcompat/app/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/calendar/homepage/l0;->P:Lmiuix/appcompat/app/l;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->B0()V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 15
    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->L0:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p0, v0, v2}, Lcom/android/calendar/homepage/l0;->M1(II)V

    .line 24
    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/android/calendar/homepage/l0;->L0:Z

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 32
    .line 33
    neg-int v0, v0

    .line 34
    sget v2, Lcom/android/calendar/homepage/l0;->B4:I

    .line 35
    .line 36
    add-int/2addr v0, v2

    .line 37
    iget v2, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 38
    .line 39
    add-int/2addr v0, v2

    .line 40
    int-to-float v0, v0

    .line 41
    iget v2, p0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 42
    .line 43
    neg-int v2, v2

    .line 44
    int-to-float v2, v2

    .line 45
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->A0:Landroid/graphics/Rect;

    .line 49
    .line 50
    iget v3, p0, Lcom/android/calendar/homepage/l0;->o1:I

    .line 51
    .line 52
    int-to-float v3, v3

    .line 53
    sub-float/2addr v3, v0

    .line 54
    float-to-int v3, v3

    .line 55
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 56
    .line 57
    iget v3, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 58
    .line 59
    int-to-float v3, v3

    .line 60
    sub-float/2addr v3, v0

    .line 61
    float-to-int v3, v3

    .line 62
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 63
    .line 64
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 65
    .line 66
    iget v3, p0, Lcom/android/calendar/homepage/l0;->W0:I

    .line 67
    .line 68
    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/android/calendar/homepage/l0;->R0(Landroid/graphics/Canvas;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 80
    .line 81
    .line 82
    iget v2, p0, Lcom/android/calendar/homepage/l0;->M1:I

    .line 83
    .line 84
    and-int/lit8 v2, v2, 0x40

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    iget v2, p0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 90
    .line 91
    if-lez v2, :cond_1

    .line 92
    .line 93
    iget v2, p0, Lcom/android/calendar/homepage/l0;->W0:I

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    iget v2, p0, Lcom/android/calendar/homepage/l0;->W0:I

    .line 97
    .line 98
    neg-int v2, v2

    .line 99
    :goto_0
    int-to-float v2, v2

    .line 100
    neg-float v0, v0

    .line 101
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->Z1:Landroid/widget/ViewSwitcher;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/android/calendar/homepage/l0;

    .line 111
    .line 112
    iput v1, v0, Lcom/android/calendar/homepage/l0;->M1:I

    .line 113
    .line 114
    invoke-virtual {v0, p1}, Lcom/android/calendar/homepage/l0;->onDraw(Landroid/graphics/Canvas;)V

    .line 115
    .line 116
    .line 117
    neg-float v0, v2

    .line 118
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    iget v2, p0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 123
    .line 124
    int-to-float v2, v2

    .line 125
    neg-float v0, v0

    .line 126
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 127
    .line 128
    .line 129
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->X0(Landroid/graphics/Canvas;)V

    .line 130
    .line 131
    .line 132
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->w1:Z

    .line 133
    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->x1:Z

    .line 137
    .line 138
    if-eqz v0, :cond_3

    .line 139
    .line 140
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->g2()V

    .line 141
    .line 142
    .line 143
    iput-boolean v1, p0, Lcom/android/calendar/homepage/l0;->x1:Z

    .line 144
    .line 145
    :cond_3
    iput-boolean v1, p0, Lcom/android/calendar/homepage/l0;->w1:Z

    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->c2:Landroid/widget/EdgeEffect;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_6

    .line 154
    .line 155
    sget v0, Lcom/android/calendar/homepage/l0;->B4:I

    .line 156
    .line 157
    if-eqz v0, :cond_4

    .line 158
    .line 159
    int-to-float v0, v0

    .line 160
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 161
    .line 162
    .line 163
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->c2:Landroid/widget/EdgeEffect;

    .line 164
    .line 165
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_5

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 172
    .line 173
    .line 174
    :cond_5
    sget v0, Lcom/android/calendar/homepage/l0;->B4:I

    .line 175
    .line 176
    if-eqz v0, :cond_6

    .line 177
    .line 178
    neg-int v0, v0

    .line 179
    int-to-float v0, v0

    .line 180
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 181
    .line 182
    .line 183
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->d2:Landroid/widget/EdgeEffect;

    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_7

    .line 190
    .line 191
    const/high16 v0, 0x43340000    # 180.0f

    .line 192
    .line 193
    iget v1, p0, Lcom/android/calendar/homepage/l0;->W0:I

    .line 194
    .line 195
    div-int/lit8 v1, v1, 0x2

    .line 196
    .line 197
    int-to-float v1, v1

    .line 198
    iget v2, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 199
    .line 200
    div-int/lit8 v2, v2, 0x2

    .line 201
    .line 202
    int-to-float v2, v2

    .line 203
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->d2:Landroid/widget/EdgeEffect;

    .line 207
    .line 208
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_7

    .line 213
    .line 214
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 215
    .line 216
    .line 217
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 218
    .line 219
    .line 220
    return-void
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x7

    .line 12
    if-eq v0, v2, :cond_2

    .line 13
    .line 14
    const/16 v2, 0x9

    .line 15
    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "Unknown hover event action. "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 44
    .line 45
    const-string v2, "ACTION_HOVER_EXIT"

    .line 46
    .line 47
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 52
    .line 53
    const-string v2, "ACTION_HOVER_ENTER"

    .line 54
    .line 55
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 60
    .line 61
    const-string v2, "ACTION_HOVER_MOVE"

    .line 62
    .line 63
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->k2:Z

    .line 67
    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    return p1

    .line 75
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v2, 0x1

    .line 80
    if-eq v0, v1, :cond_5

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    float-to-int v0, v0

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    float-to-int p1, p1

    .line 92
    invoke-direct {p0, v0, p1, v2}, Lcom/android/calendar/homepage/l0;->V1(IIZ)Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 96
    .line 97
    .line 98
    :cond_5
    return v2
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->P1:Z

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->P1:Z

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->A1()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->h1()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->t1()V

    .line 12
    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->y1:Lcom/android/calendar/homepage/l0$l;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->A0()V

    .line 31
    .line 32
    .line 33
    iput v0, p0, Lcom/android/calendar/homepage/l0;->N1:I

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/android/calendar/homepage/l0;->x:Lcom/android/calendar/homepage/l0$l;

    .line 37
    .line 38
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->d2()V

    .line 39
    .line 40
    .line 41
    iget p1, p0, Lcom/android/calendar/homepage/l0;->l0:I

    .line 42
    .line 43
    iget v2, p0, Lcom/android/calendar/homepage/l0;->m0:I

    .line 44
    .line 45
    invoke-direct {p0, p1, v2, v1}, Lcom/android/calendar/homepage/l0;->V1(IIZ)Z

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x2

    .line 49
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->setSelectionMode(I)V

    .line 50
    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/android/calendar/homepage/l0;->o2:Z

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 58
    .line 59
    .line 60
    return v0
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 1
    sget v0, Lcom/android/calendar/homepage/l0;->Z2:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v1, p0, Lcom/android/calendar/homepage/l0;->c1:I

    .line 17
    .line 18
    int-to-float v1, v1

    .line 19
    mul-float/2addr v1, v0

    .line 20
    iget v2, p0, Lcom/android/calendar/homepage/l0;->b1:F

    .line 21
    .line 22
    div-float/2addr v1, v2

    .line 23
    float-to-int v1, v1

    .line 24
    sput v1, Lcom/android/calendar/homepage/l0;->x4:I

    .line 25
    .line 26
    sget v2, Lcom/android/calendar/homepage/l0;->z4:I

    .line 27
    .line 28
    if-ge v1, v2, :cond_0

    .line 29
    .line 30
    iput v0, p0, Lcom/android/calendar/homepage/l0;->b1:F

    .line 31
    .line 32
    sput v2, Lcom/android/calendar/homepage/l0;->x4:I

    .line 33
    .line 34
    iput v2, p0, Lcom/android/calendar/homepage/l0;->c1:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget v2, Lcom/android/calendar/homepage/l0;->Y2:I

    .line 38
    .line 39
    if-le v1, v2, :cond_1

    .line 40
    .line 41
    iput v0, p0, Lcom/android/calendar/homepage/l0;->b1:F

    .line 42
    .line 43
    sput v2, Lcom/android/calendar/homepage/l0;->x4:I

    .line 44
    .line 45
    iput v2, p0, Lcom/android/calendar/homepage/l0;->c1:I

    .line 46
    .line 47
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/calendar/homepage/l0;->E2:I

    .line 48
    .line 49
    sget v1, Lcom/android/calendar/homepage/l0;->x4:I

    .line 50
    .line 51
    mul-int/2addr v0, v1

    .line 52
    iget v2, p0, Lcom/android/calendar/homepage/l0;->Y0:I

    .line 53
    .line 54
    div-int/2addr v0, v2

    .line 55
    iput v0, p0, Lcom/android/calendar/homepage/l0;->F2:I

    .line 56
    .line 57
    sget v0, Lcom/android/calendar/homepage/l0;->h3:I

    .line 58
    .line 59
    add-int/2addr v1, v0

    .line 60
    sput v1, Lcom/android/calendar/homepage/l0;->y4:I

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    float-to-int v0, v0

    .line 67
    sget v1, Lcom/android/calendar/homepage/l0;->B4:I

    .line 68
    .line 69
    sub-int/2addr v0, v1

    .line 70
    iget v1, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 71
    .line 72
    sub-int/2addr v0, v1

    .line 73
    iget v1, p0, Lcom/android/calendar/homepage/l0;->d1:F

    .line 74
    .line 75
    sget v2, Lcom/android/calendar/homepage/l0;->x4:I

    .line 76
    .line 77
    add-int/lit8 v3, v2, 0x1

    .line 78
    .line 79
    int-to-float v3, v3

    .line 80
    mul-float/2addr v1, v3

    .line 81
    float-to-int v1, v1

    .line 82
    sub-int/2addr v1, v0

    .line 83
    iput v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 84
    .line 85
    sget v3, Lcom/android/calendar/homepage/l0;->h3:I

    .line 86
    .line 87
    add-int v4, v2, v3

    .line 88
    .line 89
    mul-int/lit8 v4, v4, 0x18

    .line 90
    .line 91
    add-int/2addr v3, v4

    .line 92
    iget v4, p0, Lcom/android/calendar/homepage/l0;->X0:I

    .line 93
    .line 94
    sub-int/2addr v3, v4

    .line 95
    iput v3, p0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 96
    .line 97
    sget-boolean v3, Lcom/android/calendar/homepage/l0;->V2:Z

    .line 98
    .line 99
    const/4 v4, 0x1

    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    int-to-float v1, v1

    .line 103
    add-int/2addr v2, v4

    .line 104
    int-to-float v2, v2

    .line 105
    div-float/2addr v1, v2

    .line 106
    sget-object v2, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 107
    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v5, "onScale: mGestureCenterHour:"

    .line 114
    .line 115
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v5, p0, Lcom/android/calendar/homepage/l0;->d1:F

    .line 119
    .line 120
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v5, "\tViewStartHour: "

    .line 124
    .line 125
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v1, "\tmViewStartY:"

    .line 132
    .line 133
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 137
    .line 138
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v1, "\tmCellHeight:"

    .line 142
    .line 143
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    sget v1, Lcom/android/calendar/homepage/l0;->x4:I

    .line 147
    .line 148
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, " SpanY:"

    .line 152
    .line 153
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_2
    iget p1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 171
    .line 172
    if-gez p1, :cond_3

    .line 173
    .line 174
    const/4 p1, 0x0

    .line 175
    iput p1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 176
    .line 177
    add-int/2addr p1, v0

    .line 178
    int-to-float p1, p1

    .line 179
    sget v0, Lcom/android/calendar/homepage/l0;->x4:I

    .line 180
    .line 181
    add-int/2addr v0, v4

    .line 182
    int-to-float v0, v0

    .line 183
    div-float/2addr p1, v0

    .line 184
    iput p1, p0, Lcom/android/calendar/homepage/l0;->d1:F

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_3
    iget v1, p0, Lcom/android/calendar/homepage/l0;->U0:I

    .line 188
    .line 189
    if-le p1, v1, :cond_4

    .line 190
    .line 191
    iput v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 192
    .line 193
    add-int/2addr v1, v0

    .line 194
    int-to-float p1, v1

    .line 195
    sget v0, Lcom/android/calendar/homepage/l0;->x4:I

    .line 196
    .line 197
    add-int/2addr v0, v4

    .line 198
    int-to-float v0, v0

    .line 199
    div-float/2addr p1, v0

    .line 200
    iput p1, p0, Lcom/android/calendar/homepage/l0;->d1:F

    .line 201
    .line 202
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->I0()V

    .line 203
    .line 204
    .line 205
    iput-boolean v4, p0, Lcom/android/calendar/homepage/l0;->L0:Z

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 208
    .line 209
    .line 210
    return v4
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->P1:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->e1:Z

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sget v1, Lcom/android/calendar/homepage/l0;->B4:I

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    sub-float/2addr v0, v1

    .line 14
    iget v1, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 15
    .line 16
    int-to-float v1, v1

    .line 17
    sub-float/2addr v0, v1

    .line 18
    iget v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    add-float/2addr v1, v0

    .line 22
    sget v0, Lcom/android/calendar/homepage/l0;->x4:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    add-int/2addr v0, v2

    .line 26
    int-to-float v0, v0

    .line 27
    div-float/2addr v1, v0

    .line 28
    iput v1, p0, Lcom/android/calendar/homepage/l0;->d1:F

    .line 29
    .line 30
    sget v0, Lcom/android/calendar/homepage/l0;->Z2:I

    .line 31
    .line 32
    int-to-float v0, v0

    .line 33
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, p0, Lcom/android/calendar/homepage/l0;->b1:F

    .line 46
    .line 47
    sget v0, Lcom/android/calendar/homepage/l0;->x4:I

    .line 48
    .line 49
    iput v0, p0, Lcom/android/calendar/homepage/l0;->c1:I

    .line 50
    .line 51
    sget-boolean v1, Lcom/android/calendar/homepage/l0;->V2:Z

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    iget v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 56
    .line 57
    int-to-float v1, v1

    .line 58
    add-int/2addr v0, v2

    .line 59
    int-to-float v0, v0

    .line 60
    div-float/2addr v1, v0

    .line 61
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v4, "onScaleBegin: mGestureCenterHour:"

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v4, p0, Lcom/android/calendar/homepage/l0;->d1:F

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v4, "\tViewStartHour: "

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, "\tmViewStartY:"

    .line 87
    .line 88
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 92
    .line 93
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, "\tmCellHeight:"

    .line 97
    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    sget v1, Lcom/android/calendar/homepage/l0;->x4:I

    .line 102
    .line 103
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, " SpanY:"

    .line 107
    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_0
    return v2
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/calendar/homepage/l0;->Z0:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/calendar/homepage/l0;->T1:F

    .line 7
    .line 8
    iput p1, p0, Lcom/android/calendar/homepage/l0;->S1:F

    .line 9
    .line 10
    iput p1, p0, Lcom/android/calendar/homepage/l0;->b1:F

    .line 11
    .line 12
    return-void
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onSizeChanged width:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " height:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " oldw:"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p3, " oldh:"

    .line 33
    .line 34
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p3, " hashCode:"

    .line 41
    .line 42
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-static {v0, p3}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput p1, p0, Lcom/android/calendar/homepage/l0;->W0:I

    .line 60
    .line 61
    iput p2, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 62
    .line 63
    iget-object p3, p0, Lcom/android/calendar/homepage/l0;->c2:Landroid/widget/EdgeEffect;

    .line 64
    .line 65
    invoke-virtual {p3, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 66
    .line 67
    .line 68
    iget-object p3, p0, Lcom/android/calendar/homepage/l0;->d2:Landroid/widget/EdgeEffect;

    .line 69
    .line 70
    iget p4, p0, Lcom/android/calendar/homepage/l0;->W0:I

    .line 71
    .line 72
    iget v0, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 73
    .line 74
    invoke-virtual {p3, p4, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->getEffectiveWidth()I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    iget p4, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 82
    .line 83
    mul-int/lit8 v0, p4, 0x1

    .line 84
    .line 85
    sub-int/2addr p3, v0

    .line 86
    div-int/2addr p3, p4

    .line 87
    iput p3, p0, Lcom/android/calendar/homepage/l0;->y0:I

    .line 88
    .line 89
    div-int/lit8 p3, p1, 0x7

    .line 90
    .line 91
    sput p3, Lcom/android/calendar/homepage/l0;->b3:I

    .line 92
    .line 93
    new-instance p3, Landroid/graphics/Paint;

    .line 94
    .line 95
    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 96
    .line 97
    .line 98
    sget p4, Lcom/android/calendar/homepage/l0;->H3:F

    .line 99
    .line 100
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Landroid/graphics/Paint;->ascent()F

    .line 104
    .line 105
    .line 106
    move-result p4

    .line 107
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 108
    .line 109
    .line 110
    move-result p4

    .line 111
    float-to-int p4, p4

    .line 112
    iput p4, p0, Lcom/android/calendar/homepage/l0;->f1:I

    .line 113
    .line 114
    sget p4, Lcom/android/calendar/homepage/l0;->J3:F

    .line 115
    .line 116
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3}, Landroid/graphics/Paint;->ascent()F

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    float-to-int p3, p3

    .line 128
    iput p3, p0, Lcom/android/calendar/homepage/l0;->g1:I

    .line 129
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/homepage/l0;->M1(II)V

    .line 131
    .line 132
    .line 133
    return-void
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    iput v0, p0, Lcom/android/calendar/homepage/l0;->l0:I

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    float-to-int v0, v0

    .line 13
    iput v0, p0, Lcom/android/calendar/homepage/l0;->m0:I

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sget-boolean v1, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    sget-object v1, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, ""

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, " ev.getPointerCount() = "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    iget v1, p0, Lcom/android/calendar/homepage/l0;->M1:I

    .line 58
    .line 59
    and-int/lit8 v1, v1, 0x40

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->L1:Landroid/view/ScaleGestureDetector;

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->L1:Landroid/view/ScaleGestureDetector;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->t1()V

    .line 78
    .line 79
    .line 80
    return v2

    .line 81
    :cond_1
    const/4 v1, 0x0

    .line 82
    const/4 v3, 0x0

    .line 83
    if-eqz v0, :cond_1a

    .line 84
    .line 85
    if-eq v0, v2, :cond_c

    .line 86
    .line 87
    const/4 v1, 0x2

    .line 88
    if-eq v0, v1, :cond_6

    .line 89
    .line 90
    const/4 v1, 0x3

    .line 91
    if-eq v0, v1, :cond_4

    .line 92
    .line 93
    sget-boolean v0, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v3, "Not MotionEvent "

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->a2:Landroid/view/GestureDetector;

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    return v2

    .line 132
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    return p1

    .line 137
    :cond_4
    sget-boolean v0, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 138
    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 142
    .line 143
    const-string v1, "ACTION_CANCEL"

    .line 144
    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->a2:Landroid/view/GestureDetector;

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 151
    .line 152
    .line 153
    iput-boolean v3, p0, Lcom/android/calendar/homepage/l0;->P1:Z

    .line 154
    .line 155
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->P1()V

    .line 156
    .line 157
    .line 158
    return v2

    .line 159
    :cond_6
    sget-boolean v0, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 160
    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 164
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v4, "ACTION_MOVE Cnt="

    .line 171
    .line 172
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->a2:Landroid/view/GestureDetector;

    .line 193
    .line 194
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->S2:Landroid/view/VelocityTracker;

    .line 198
    .line 199
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->S2:Landroid/view/VelocityTracker;

    .line 203
    .line 204
    const/16 v0, 0x3e8

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->S2:Landroid/view/VelocityTracker;

    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    iput p1, p0, Lcom/android/calendar/homepage/l0;->p0:F

    .line 216
    .line 217
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->S2:Landroid/view/VelocityTracker;

    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    iput p1, p0, Lcom/android/calendar/homepage/l0;->q0:F

    .line 224
    .line 225
    iget-boolean p1, p0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 226
    .line 227
    if-eqz p1, :cond_b

    .line 228
    .line 229
    iget p1, p0, Lcom/android/calendar/homepage/l0;->m0:I

    .line 230
    .line 231
    iget v0, p0, Lcom/android/calendar/homepage/l0;->o0:I

    .line 232
    .line 233
    sub-int/2addr p1, v0

    .line 234
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->k1(I)I

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    if-eqz p1, :cond_9

    .line 239
    .line 240
    iget-boolean p1, p0, Lcom/android/calendar/homepage/l0;->Q2:Z

    .line 241
    .line 242
    if-nez p1, :cond_8

    .line 243
    .line 244
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->P2:Landroid/os/Handler;

    .line 245
    .line 246
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->R2:Ljava/lang/Runnable;

    .line 247
    .line 248
    const-wide/16 v3, 0x0

    .line 249
    .line 250
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    .line 252
    .line 253
    :cond_8
    iput-boolean v2, p0, Lcom/android/calendar/homepage/l0;->Q2:Z

    .line 254
    .line 255
    goto :goto_0

    .line 256
    :cond_9
    iget p1, p0, Lcom/android/calendar/homepage/l0;->l0:I

    .line 257
    .line 258
    iget v0, p0, Lcom/android/calendar/homepage/l0;->m0:I

    .line 259
    .line 260
    invoke-direct {p0, p1, v0, v3}, Lcom/android/calendar/homepage/l0;->V1(IIZ)Z

    .line 261
    .line 262
    .line 263
    iget-boolean p1, p0, Lcom/android/calendar/homepage/l0;->Q2:Z

    .line 264
    .line 265
    if-eqz p1, :cond_a

    .line 266
    .line 267
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->P2:Landroid/os/Handler;

    .line 268
    .line 269
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->R2:Ljava/lang/Runnable;

    .line 270
    .line 271
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    .line 273
    .line 274
    :cond_a
    iput-boolean v3, p0, Lcom/android/calendar/homepage/l0;->Q2:Z

    .line 275
    .line 276
    :cond_b
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 277
    .line 278
    .line 279
    return v2

    .line 280
    :cond_c
    sget-boolean v0, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 281
    .line 282
    if-eqz v0, :cond_d

    .line 283
    .line 284
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 285
    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    const-string v5, "ACTION_UP Cnt="

    .line 292
    .line 293
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    iget-boolean v5, p0, Lcom/android/calendar/homepage/l0;->e1:Z

    .line 304
    .line 305
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    :cond_d
    iget v0, p0, Lcom/android/calendar/homepage/l0;->p0:F

    .line 316
    .line 317
    mul-float/2addr v0, v0

    .line 318
    iget v4, p0, Lcom/android/calendar/homepage/l0;->q0:F

    .line 319
    .line 320
    mul-float/2addr v4, v4

    .line 321
    add-float/2addr v0, v4

    .line 322
    float-to-double v4, v0

    .line 323
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 324
    .line 325
    .line 326
    move-result-wide v4

    .line 327
    double-to-float v0, v4

    .line 328
    iget-object v4, p0, Lcom/android/calendar/homepage/l0;->c2:Landroid/widget/EdgeEffect;

    .line 329
    .line 330
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 331
    .line 332
    .line 333
    iget-object v4, p0, Lcom/android/calendar/homepage/l0;->d2:Landroid/widget/EdgeEffect;

    .line 334
    .line 335
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 336
    .line 337
    .line 338
    iput-boolean v3, p0, Lcom/android/calendar/homepage/l0;->b:Z

    .line 339
    .line 340
    iget-object v4, p0, Lcom/android/calendar/homepage/l0;->a2:Landroid/view/GestureDetector;

    .line 341
    .line 342
    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 343
    .line 344
    .line 345
    iget-boolean p1, p0, Lcom/android/calendar/homepage/l0;->e1:Z

    .line 346
    .line 347
    if-nez p1, :cond_e

    .line 348
    .line 349
    iput-boolean v2, p0, Lcom/android/calendar/homepage/l0;->e1:Z

    .line 350
    .line 351
    iput v3, p0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 352
    .line 353
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 354
    .line 355
    .line 356
    return v2

    .line 357
    :cond_e
    iget-boolean p1, p0, Lcom/android/calendar/homepage/l0;->a:Z

    .line 358
    .line 359
    if-eqz p1, :cond_f

    .line 360
    .line 361
    iput v3, p0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 362
    .line 363
    return v2

    .line 364
    :cond_f
    iget-boolean p1, p0, Lcom/android/calendar/homepage/l0;->P1:Z

    .line 365
    .line 366
    if-eqz p1, :cond_10

    .line 367
    .line 368
    iput-boolean v3, p0, Lcom/android/calendar/homepage/l0;->P1:Z

    .line 369
    .line 370
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->P1()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 374
    .line 375
    .line 376
    :cond_10
    iget p1, p0, Lcom/android/calendar/homepage/l0;->M1:I

    .line 377
    .line 378
    and-int/lit8 p1, p1, 0x40

    .line 379
    .line 380
    if-eqz p1, :cond_15

    .line 381
    .line 382
    iput v3, p0, Lcom/android/calendar/homepage/l0;->M1:I

    .line 383
    .line 384
    iget p1, p0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 385
    .line 386
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 387
    .line 388
    .line 389
    move-result p1

    .line 390
    sget v4, Lcom/android/calendar/homepage/l0;->b3:I

    .line 391
    .line 392
    if-le p1, v4, :cond_13

    .line 393
    .line 394
    sget-boolean p1, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 395
    .line 396
    if-eqz p1, :cond_11

    .line 397
    .line 398
    sget-object p1, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 399
    .line 400
    const-string v0, "- horizontal scroll: switch views"

    .line 401
    .line 402
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    :cond_11
    iget p1, p0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 406
    .line 407
    if-lez p1, :cond_12

    .line 408
    .line 409
    move v0, v2

    .line 410
    goto :goto_1

    .line 411
    :cond_12
    move v0, v3

    .line 412
    :goto_1
    int-to-float p1, p1

    .line 413
    iget v4, p0, Lcom/android/calendar/homepage/l0;->W0:I

    .line 414
    .line 415
    int-to-float v4, v4

    .line 416
    invoke-direct {p0, v0, p1, v4, v1}, Lcom/android/calendar/homepage/l0;->a2(ZFFF)Landroid/view/View;

    .line 417
    .line 418
    .line 419
    iput v3, p0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 420
    .line 421
    return v2

    .line 422
    :cond_13
    sget-boolean p1, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 423
    .line 424
    if-eqz p1, :cond_14

    .line 425
    .line 426
    sget-object p1, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 427
    .line 428
    const-string v1, "- horizontal scroll: snap back"

    .line 429
    .line 430
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    :cond_14
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->K1()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 437
    .line 438
    .line 439
    iput v3, p0, Lcom/android/calendar/homepage/l0;->S0:I

    .line 440
    .line 441
    :cond_15
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->P2:Landroid/os/Handler;

    .line 442
    .line 443
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->R2:Ljava/lang/Runnable;

    .line 444
    .line 445
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 449
    .line 450
    .line 451
    iget-boolean p1, p0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 452
    .line 453
    if-eqz p1, :cond_19

    .line 454
    .line 455
    iget-boolean p1, p0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 456
    .line 457
    if-eqz p1, :cond_17

    .line 458
    .line 459
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 460
    .line 461
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 462
    .line 463
    iget-object v0, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 464
    .line 465
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/homepage/l0;->v0(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V

    .line 466
    .line 467
    .line 468
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 469
    .line 470
    iget-object p1, p1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 471
    .line 472
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/EventEx;->isSolarRepeating()Z

    .line 477
    .line 478
    .line 479
    move-result p1

    .line 480
    if-eqz p1, :cond_16

    .line 481
    .line 482
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->N0()V

    .line 483
    .line 484
    .line 485
    goto :goto_2

    .line 486
    :cond_16
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->f2()V

    .line 487
    .line 488
    .line 489
    iput-boolean v2, p0, Lcom/android/calendar/homepage/l0;->q2:Z

    .line 490
    .line 491
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->d:Landroid/os/Handler;

    .line 492
    .line 493
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->h:Lcom/android/calendar/homepage/l0$o;

    .line 494
    .line 495
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    .line 497
    .line 498
    goto :goto_2

    .line 499
    :cond_17
    const/high16 p1, 0x447a0000    # 1000.0f

    .line 500
    .line 501
    cmpg-float p1, v0, p1

    .line 502
    .line 503
    if-gez p1, :cond_18

    .line 504
    .line 505
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->getSelectedTimeInMillis()J

    .line 506
    .line 507
    .line 508
    move-result-wide v0

    .line 509
    const-wide/32 v4, 0x1b7740

    .line 510
    .line 511
    .line 512
    sub-long v7, v0, v4

    .line 513
    .line 514
    const-wide/16 v9, 0x0

    .line 515
    .line 516
    const/4 v11, 0x0

    .line 517
    move-object v6, p0

    .line 518
    invoke-direct/range {v6 .. v11}, Lcom/android/calendar/homepage/l0;->M0(JJZ)V

    .line 519
    .line 520
    .line 521
    const-string p1, "long_click_new_event"

    .line 522
    .line 523
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    goto :goto_2

    .line 527
    :cond_18
    iput-boolean v2, p0, Lcom/android/calendar/homepage/l0;->q2:Z

    .line 528
    .line 529
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->d:Landroid/os/Handler;

    .line 530
    .line 531
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->h:Lcom/android/calendar/homepage/l0$o;

    .line 532
    .line 533
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    .line 535
    .line 536
    iput-boolean v3, p0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 537
    .line 538
    :cond_19
    :goto_2
    iput v3, p0, Lcom/android/calendar/homepage/l0;->o0:I

    .line 539
    .line 540
    return v2

    .line 541
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    float-to-int v0, v0

    .line 546
    iput v0, p0, Lcom/android/calendar/homepage/l0;->n0:I

    .line 547
    .line 548
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->S2:Landroid/view/VelocityTracker;

    .line 549
    .line 550
    if-nez v0, :cond_1b

    .line 551
    .line 552
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    iput-object v0, p0, Lcom/android/calendar/homepage/l0;->S2:Landroid/view/VelocityTracker;

    .line 557
    .line 558
    goto :goto_3

    .line 559
    :cond_1b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 560
    .line 561
    .line 562
    iput v1, p0, Lcom/android/calendar/homepage/l0;->p0:F

    .line 563
    .line 564
    iput v1, p0, Lcom/android/calendar/homepage/l0;->q0:F

    .line 565
    .line 566
    :goto_3
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->S2:Landroid/view/VelocityTracker;

    .line 567
    .line 568
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 569
    .line 570
    .line 571
    iput-boolean v2, p0, Lcom/android/calendar/homepage/l0;->b:Z

    .line 572
    .line 573
    iget-boolean v0, p0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 574
    .line 575
    if-eqz v0, :cond_1d

    .line 576
    .line 577
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->e2()Z

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-nez v0, :cond_1c

    .line 582
    .line 583
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->t1()V

    .line 584
    .line 585
    .line 586
    return v2

    .line 587
    :cond_1c
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->getTouchArea()I

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    iput v0, p0, Lcom/android/calendar/homepage/l0;->N1:I

    .line 592
    .line 593
    if-eqz v0, :cond_1d

    .line 594
    .line 595
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->d2()V

    .line 596
    .line 597
    .line 598
    :cond_1d
    sget-boolean v0, Lcom/android/calendar/homepage/l0;->U2:Z

    .line 599
    .line 600
    if-eqz v0, :cond_1e

    .line 601
    .line 602
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 603
    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    .line 605
    .line 606
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    .line 608
    .line 609
    const-string v4, "ACTION_DOWN ev.getDownTime = "

    .line 610
    .line 611
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 615
    .line 616
    .line 617
    move-result-wide v4

    .line 618
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    const-string v4, " Cnt="

    .line 622
    .line 623
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 627
    .line 628
    .line 629
    move-result v4

    .line 630
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    :cond_1e
    iget v0, p0, Lcom/android/calendar/homepage/l0;->h1:I

    .line 641
    .line 642
    sget v1, Lcom/android/calendar/homepage/l0;->B4:I

    .line 643
    .line 644
    add-int/2addr v0, v1

    .line 645
    sget v1, Lcom/android/calendar/homepage/l0;->m3:I

    .line 646
    .line 647
    add-int/2addr v0, v1

    .line 648
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 649
    .line 650
    .line 651
    move-result v1

    .line 652
    int-to-float v0, v0

    .line 653
    cmpg-float v0, v1, v0

    .line 654
    .line 655
    if-gez v0, :cond_1f

    .line 656
    .line 657
    iput-boolean v2, p0, Lcom/android/calendar/homepage/l0;->Y1:Z

    .line 658
    .line 659
    goto :goto_4

    .line 660
    :cond_1f
    iput-boolean v3, p0, Lcom/android/calendar/homepage/l0;->Y1:Z

    .line 661
    .line 662
    :goto_4
    iput-boolean v2, p0, Lcom/android/calendar/homepage/l0;->e1:Z

    .line 663
    .line 664
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->a2:Landroid/view/GestureDetector;

    .line 665
    .line 666
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 667
    .line 668
    .line 669
    return v2
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
.end method

.method protected p1(Landroid/graphics/Paint;)Landroid/text/style/AbsoluteSizeSpan;
    .locals 1

    .line 1
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    float-to-int p1, p1

    .line 8
    invoke-direct {v0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-object v0
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected q1(Lcom/android/calendar/homepage/l0$l;)I
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    cmp-long p1, v0, v2

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    iget p1, p0, Lcom/android/calendar/homepage/l0;->F:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget p1, p0, Lcom/android/calendar/homepage/l0;->G:I

    .line 19
    .line 20
    :goto_0
    return p1
    .line 21
    .line 22
.end method

.method r1(II)J
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Lcom/miui/calendar/util/r0;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/calendar/homepage/l0;->a0:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->G(I)J

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/miui/calendar/util/r0;->F(I)V

    .line 14
    .line 15
    .line 16
    mul-int/lit8 p2, p2, 0x3c

    .line 17
    .line 18
    div-int/lit8 p2, p2, 0x4

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lcom/miui/calendar/util/r0;->H(I)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {v0, p1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    return-wide p1
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public s1()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->v1()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/android/calendar/homepage/l0;->q4:I

    .line 5
    .line 6
    sput v0, Lcom/android/calendar/homepage/l0;->p4:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->u1:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->getHourStrs()[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/calendar/homepage/l0;->r1:[Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->C(Landroid/content/Context;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    iput v0, p0, Lcom/android/calendar/homepage/l0;->H0:I

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/android/calendar/homepage/l0;->v0:I

    .line 34
    .line 35
    iput v0, p0, Lcom/android/calendar/homepage/l0;->w0:I

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/calendar/homepage/l0;->x0:Lcom/android/calendar/homepage/l0$l;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->t1()V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/android/calendar/homepage/l0;->T2:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "handleOnResume mIs24HourFormat:"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-boolean v2, p0, Lcom/android/calendar/homepage/l0;->u1:Z

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, " mHourStrs:"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->r1:[Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method public setAnimateDayEventHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->j1:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/calendar/homepage/l0;->L0:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public setAnimateDayHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->i1:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/calendar/homepage/l0;->L0:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public setEventsAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/l0;->G:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public setMoreAllDayEventsTextAlpha(I)V
    .locals 0

    .line 1
    sput p1, Lcom/android/calendar/homepage/l0;->w4:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public setSelected(Lcom/miui/calendar/util/r0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/calendar/util/r0;->E(Lcom/miui/calendar/util/r0;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->m()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->setSelectedHour(I)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->setSelectedEvent(Lcom/android/calendar/homepage/l0$l;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/calendar/homepage/l0;->z1:Lcom/android/calendar/homepage/l0$l;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->l()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    invoke-static {v1, v2, v3, v4}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0;->setSelectedDay(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->v1:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/android/calendar/homepage/l0;->w1:Z

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/android/calendar/homepage/l0;->K1()V

    .line 50
    .line 51
    .line 52
    iput-boolean p1, p0, Lcom/android/calendar/homepage/l0;->L0:Z

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/l0;->T1(Z)V

    .line 58
    .line 59
    .line 60
    return-void
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method protected setupHourTextPaint(Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    sget v0, Lcom/android/calendar/homepage/l0;->v4:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/android/calendar/homepage/l0;->H3:F

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/miui/calendar/util/x0;->D()Landroid/graphics/Typeface;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    .line 30
    .line 31
    return-void
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method t1()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/l0;->setSelectionMode(I)V

    .line 3
    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->o2:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->Q1:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/calendar/homepage/l0;->R1:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->z:Lcom/android/calendar/homepage/l0$l;

    .line 13
    .line 14
    iput v0, p0, Lcom/android/calendar/homepage/l0;->N1:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/calendar/homepage/l0;->S:Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    .line 23
    .line 24
    return-void
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method protected u1(Landroid/content/Context;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->C(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int/2addr v1, v0

    .line 19
    iput v1, p0, Lcom/android/calendar/homepage/l0;->H0:I

    .line 20
    .line 21
    new-instance v1, Lcom/miui/calendar/util/r0;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v1, v2}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->j:Lcom/miui/calendar/util/r0;

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->j:Lcom/miui/calendar/util/r0;

    .line 37
    .line 38
    invoke-virtual {v3, v1, v2}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->j:Lcom/miui/calendar/util/r0;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/miui/calendar/util/r0;->l()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-static {v1, v2, v3, v4}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput v1, p0, Lcom/android/calendar/homepage/l0;->l:I

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->B1:Landroid/content/res/Resources;

    .line 54
    .line 55
    const v2, 0x7f060534

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    sput v1, Lcom/android/calendar/homepage/l0;->i4:I

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->B1:Landroid/content/res/Resources;

    .line 65
    .line 66
    const v2, 0x7f060535

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    sput v1, Lcom/android/calendar/homepage/l0;->j4:I

    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->B1:Landroid/content/res/Resources;

    .line 76
    .line 77
    const v2, 0x7f060086

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    sput v1, Lcom/android/calendar/homepage/l0;->k4:I

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->B1:Landroid/content/res/Resources;

    .line 87
    .line 88
    const v2, 0x7f06019c

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    sput v1, Lcom/android/calendar/homepage/l0;->q4:I

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->B1:Landroid/content/res/Resources;

    .line 98
    .line 99
    const v2, 0x7f06008d

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    sput v1, Lcom/android/calendar/homepage/l0;->r4:I

    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->B1:Landroid/content/res/Resources;

    .line 109
    .line 110
    const v2, 0x7f0802de

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    sput-object v1, Lcom/android/calendar/homepage/l0;->s4:Landroid/graphics/drawable/Drawable;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->B1:Landroid/content/res/Resources;

    .line 120
    .line 121
    const v2, 0x7f060085

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    sput v1, Lcom/android/calendar/homepage/l0;->l4:I

    .line 129
    .line 130
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->B1:Landroid/content/res/Resources;

    .line 131
    .line 132
    const v2, 0x7f0600dc

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    sput v1, Lcom/android/calendar/homepage/l0;->m4:I

    .line 140
    .line 141
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->B1:Landroid/content/res/Resources;

    .line 142
    .line 143
    const v2, 0x7f06008a

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    sput v1, Lcom/android/calendar/homepage/l0;->n4:I

    .line 151
    .line 152
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->B1:Landroid/content/res/Resources;

    .line 153
    .line 154
    const v2, 0x7f06008b

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    sput v1, Lcom/android/calendar/homepage/l0;->o4:I

    .line 162
    .line 163
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->B1:Landroid/content/res/Resources;

    .line 164
    .line 165
    const v2, 0x7f06008e

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    sput v1, Lcom/android/calendar/homepage/l0;->v4:I

    .line 173
    .line 174
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->B1:Landroid/content/res/Resources;

    .line 175
    .line 176
    const v2, 0x7f0604c2

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    sput v1, Lcom/android/calendar/homepage/l0;->g4:I

    .line 184
    .line 185
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->B1:Landroid/content/res/Resources;

    .line 186
    .line 187
    const v2, 0x7f060407

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    sput v1, Lcom/android/calendar/homepage/l0;->h4:I

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->X1()V

    .line 197
    .line 198
    .line 199
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->B1:Landroid/content/res/Resources;

    .line 200
    .line 201
    const v2, 0x7f060089

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->F0:Landroid/graphics/Paint;

    .line 209
    .line 210
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    .line 212
    .line 213
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 214
    .line 215
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    .line 217
    .line 218
    const/4 v1, 0x0

    .line 219
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    .line 221
    .line 222
    iget-object v2, p0, Lcom/android/calendar/homepage/l0;->D0:Landroid/graphics/Paint;

    .line 223
    .line 224
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 225
    .line 226
    .line 227
    const/16 v3, 0xe

    .line 228
    .line 229
    new-array v4, v3, [Ljava/lang/String;

    .line 230
    .line 231
    iput-object v4, p0, Lcom/android/calendar/homepage/l0;->s1:[Ljava/lang/String;

    .line 232
    .line 233
    new-array v3, v3, [Ljava/lang/String;

    .line 234
    .line 235
    iput-object v3, p0, Lcom/android/calendar/homepage/l0;->t1:[Ljava/lang/String;

    .line 236
    .line 237
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    const/16 v4, 0x32

    .line 242
    .line 243
    if-eqz v3, :cond_0

    .line 244
    .line 245
    move v3, v4

    .line 246
    goto :goto_0

    .line 247
    :cond_0
    const/16 v3, 0x14

    .line 248
    .line 249
    :goto_0
    move v5, v0

    .line 250
    :goto_1
    const/4 v6, 0x7

    .line 251
    if-gt v5, v6, :cond_2

    .line 252
    .line 253
    add-int/lit8 v6, v5, -0x1

    .line 254
    .line 255
    iget-object v7, p0, Lcom/android/calendar/homepage/l0;->s1:[Ljava/lang/String;

    .line 256
    .line 257
    invoke-static {v5, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    aput-object v8, v7, v6

    .line 266
    .line 267
    iget-object v7, p0, Lcom/android/calendar/homepage/l0;->s1:[Ljava/lang/String;

    .line 268
    .line 269
    add-int/lit8 v8, v6, 0x7

    .line 270
    .line 271
    aget-object v9, v7, v6

    .line 272
    .line 273
    aput-object v9, v7, v8

    .line 274
    .line 275
    iget-object v7, p0, Lcom/android/calendar/homepage/l0;->t1:[Ljava/lang/String;

    .line 276
    .line 277
    const/16 v9, 0x1e

    .line 278
    .line 279
    invoke-static {v5, v9}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    aput-object v9, v7, v6

    .line 288
    .line 289
    iget-object v7, p0, Lcom/android/calendar/homepage/l0;->t1:[Ljava/lang/String;

    .line 290
    .line 291
    aget-object v7, v7, v6

    .line 292
    .line 293
    iget-object v9, p0, Lcom/android/calendar/homepage/l0;->s1:[Ljava/lang/String;

    .line 294
    .line 295
    aget-object v9, v9, v6

    .line 296
    .line 297
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    if-eqz v7, :cond_1

    .line 302
    .line 303
    iget-object v7, p0, Lcom/android/calendar/homepage/l0;->t1:[Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {v5, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    aput-object v9, v7, v6

    .line 310
    .line 311
    :cond_1
    iget-object v7, p0, Lcom/android/calendar/homepage/l0;->t1:[Ljava/lang/String;

    .line 312
    .line 313
    aget-object v6, v7, v6

    .line 314
    .line 315
    aput-object v6, v7, v8

    .line 316
    .line 317
    add-int/lit8 v5, v5, 0x1

    .line 318
    .line 319
    goto :goto_1

    .line 320
    :cond_2
    sget v3, Lcom/android/calendar/homepage/l0;->D3:F

    .line 321
    .line 322
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 323
    .line 324
    .line 325
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->n:Landroid/graphics/Typeface;

    .line 326
    .line 327
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 328
    .line 329
    .line 330
    sget v3, Lcom/android/calendar/homepage/l0;->A3:F

    .line 331
    .line 332
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 333
    .line 334
    .line 335
    sget v3, Lcom/android/calendar/homepage/l0;->H3:F

    .line 336
    .line 337
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 338
    .line 339
    .line 340
    const/4 v3, 0x0

    .line 341
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0}, Lcom/android/calendar/homepage/l0;->s1()V

    .line 345
    .line 346
    .line 347
    invoke-static {v1}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    iput-object v4, p0, Lcom/android/calendar/homepage/l0;->H1:Ljava/lang/String;

    .line 356
    .line 357
    invoke-static {v0}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    iput-object v4, p0, Lcom/android/calendar/homepage/l0;->I1:Ljava/lang/String;

    .line 366
    .line 367
    sget v4, Lcom/android/calendar/homepage/l0;->J3:F

    .line 368
    .line 369
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 370
    .line 371
    .line 372
    const-string v2, "layout_inflater"

    .line 373
    .line 374
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    check-cast v2, Landroid/view/LayoutInflater;

    .line 379
    .line 380
    const v4, 0x7f0d005d

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    iput-object v2, p0, Lcom/android/calendar/homepage/l0;->J0:Landroid/view/View;

    .line 388
    .line 389
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 390
    .line 391
    const/4 v4, -0x1

    .line 392
    const/4 v5, -0x2

    .line 393
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    .line 398
    .line 399
    new-instance v2, Landroid/widget/PopupWindow;

    .line 400
    .line 401
    invoke-direct {v2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 402
    .line 403
    .line 404
    iput-object v2, p0, Lcom/android/calendar/homepage/l0;->I0:Landroid/widget/PopupWindow;

    .line 405
    .line 406
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->J0:Landroid/view/View;

    .line 407
    .line 408
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    const v3, 0x103000b

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 423
    .line 424
    .line 425
    new-array v3, v0, [I

    .line 426
    .line 427
    const v4, 0x1010054

    .line 428
    .line 429
    .line 430
    aput v4, v3, v1

    .line 431
    .line 432
    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    iget-object v3, p0, Lcom/android/calendar/homepage/l0;->I0:Landroid/widget/PopupWindow;

    .line 437
    .line 438
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 446
    .line 447
    .line 448
    iget-object v1, p0, Lcom/android/calendar/homepage/l0;->J0:Landroid/view/View;

    .line 449
    .line 450
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 454
    .line 455
    .line 456
    new-instance v1, Lcom/miui/calendar/util/r0;

    .line 457
    .line 458
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    invoke-direct {v1, p1}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 466
    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 468
    .line 469
    .line 470
    move-result-wide v1

    .line 471
    iget-object p1, p0, Lcom/android/calendar/homepage/l0;->i:Lcom/miui/calendar/util/r0;

    .line 472
    .line 473
    invoke-virtual {p1, v1, v2}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 474
    .line 475
    .line 476
    iget p1, p0, Lcom/android/calendar/homepage/l0;->m1:I

    .line 477
    .line 478
    new-array v1, p1, [I

    .line 479
    .line 480
    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->r:[I

    .line 481
    .line 482
    new-array v1, p1, [Z

    .line 483
    .line 484
    iput-object v1, p0, Lcom/android/calendar/homepage/l0;->v:[Z

    .line 485
    .line 486
    add-int/2addr p1, v0

    .line 487
    add-int/lit8 p1, p1, 0x19

    .line 488
    .line 489
    mul-int/lit8 p1, p1, 0x4

    .line 490
    .line 491
    new-array p1, p1, [F

    .line 492
    .line 493
    iput-object p1, p0, Lcom/android/calendar/homepage/l0;->G0:[F

    .line 494
    .line 495
    return-void
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method public w1()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/l0;->k1:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/calendar/homepage/l0;->l1:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-boolean v1, Lcom/android/calendar/homepage/l0;->E4:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget v1, p0, Lcom/android/calendar/homepage/l0;->V0:I

    .line 13
    .line 14
    sget v2, Lcom/android/calendar/homepage/l0;->B4:I

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    sget v2, Lcom/android/calendar/homepage/l0;->l3:I

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    int-to-float v0, v0

    .line 21
    sget v2, Lcom/android/calendar/homepage/l0;->j3:F

    .line 22
    .line 23
    mul-float/2addr v0, v2

    .line 24
    float-to-int v0, v0

    .line 25
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v1, p0, Lcom/android/calendar/homepage/l0;->k1:I

    .line 30
    .line 31
    div-int/2addr v0, v1

    .line 32
    iput v0, p0, Lcom/android/calendar/homepage/l0;->j1:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget v0, Lcom/android/calendar/homepage/l0;->j3:F

    .line 36
    .line 37
    float-to-int v0, v0

    .line 38
    iput v0, p0, Lcom/android/calendar/homepage/l0;->j1:I

    .line 39
    .line 40
    :goto_0
    return-void
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public z0(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/calendar/homepage/l0;->v2:I

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/android/calendar/homepage/l0;->x2:Z

    .line 8
    .line 9
    :goto_0
    iget p2, p0, Lcom/android/calendar/homepage/l0;->t2:I

    .line 10
    .line 11
    sub-int/2addr p1, p2

    .line 12
    iput p1, p0, Lcom/android/calendar/homepage/l0;->s2:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method
