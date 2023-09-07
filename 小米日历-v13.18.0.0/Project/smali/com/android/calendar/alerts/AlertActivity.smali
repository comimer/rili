.class public Lcom/android/calendar/alerts/AlertActivity;
.super Lcom/android/calendar/common/b;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/alerts/AlertActivity$e;,
        Lcom/android/calendar/alerts/AlertActivity$f;
    }
.end annotation


# instance fields
.field private b:Lcom/android/calendar/alerts/b;

.field private c:Landroid/content/ContentResolver;

.field private d:Landroid/view/View;

.field private e:Landroidx/viewpager/widget/ViewPager;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lmiuix/appcompat/app/l;

.field private h:Lcom/android/calendar/alerts/AlertActivity$e;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/os/Handler;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/calendar/alerts/entities/BaseAlert;",
            ">;"
        }
    .end annotation
.end field

.field private n:[Landroid/view/View;

.field private o:I

.field private p:Landroid/telephony/TelephonyManager;

.field private q:Landroid/telephony/PhoneStateListener;

.field private r:Landroidx/viewpager/widget/ViewPager$j;

.field private final v:Lcom/android/calendar/alerts/b$b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->h:Lcom/android/calendar/alerts/AlertActivity$e;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/calendar/alerts/AlertActivity;->i:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/calendar/alerts/AlertActivity;->j:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/calendar/alerts/AlertActivity;->k:Z

    .line 13
    .line 14
    new-instance v1, Lcom/android/calendar/alerts/AlertActivity$f;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/calendar/alerts/AlertActivity$f;-><init>(Lcom/android/calendar/alerts/AlertActivity;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->l:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 28
    .line 29
    iput v0, p0, Lcom/android/calendar/alerts/AlertActivity;->o:I

    .line 30
    .line 31
    new-instance v0, Lcom/android/calendar/alerts/AlertActivity$a;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/android/calendar/alerts/AlertActivity$a;-><init>(Lcom/android/calendar/alerts/AlertActivity;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->q:Landroid/telephony/PhoneStateListener;

    .line 37
    .line 38
    new-instance v0, Lcom/android/calendar/alerts/AlertActivity$d;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/android/calendar/alerts/AlertActivity$d;-><init>(Lcom/android/calendar/alerts/AlertActivity;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->r:Landroidx/viewpager/widget/ViewPager$j;

    .line 44
    .line 45
    new-instance v0, Lcom/android/calendar/alerts/a;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/android/calendar/alerts/a;-><init>(Lcom/android/calendar/alerts/AlertActivity;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->v:Lcom/android/calendar/alerts/b$b;

    .line 51
    .line 52
    return-void
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

.method private A0(Z)V
    .locals 3

    .line 1
    const-string p1, "appops"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/AppOpsManager;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "android:write_settings"

    .line 18
    .line 19
    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private B0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/android/calendar/alerts/AlertActivity;->o:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->b:Lcom/android/calendar/alerts/b;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/android/calendar/alerts/b;->v(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->C0()V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 27
    .line 28
    .line 29
    :goto_1
    return-void
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

.method private C0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->f:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->b:Lcom/android/calendar/alerts/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/calendar/alerts/b;->d()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-le v0, v1, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->f:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->f:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->b:Lcom/android/calendar/alerts/b;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/calendar/alerts/b;->d()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    new-array v0, v0, [Landroid/view/View;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->n:[Landroid/view/View;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->e:Landroidx/viewpager/widget/ViewPager;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lcom/android/calendar/alerts/AlertActivity;->o:I

    .line 43
    .line 44
    move v0, v2

    .line 45
    :goto_0
    iget-object v3, p0, Lcom/android/calendar/alerts/AlertActivity;->b:Lcom/android/calendar/alerts/b;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/android/calendar/alerts/b;->d()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ge v0, v3, :cond_3

    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/calendar/alerts/AlertActivity;->n:[Landroid/view/View;

    .line 54
    .line 55
    iget v4, p0, Lcom/android/calendar/alerts/AlertActivity;->o:I

    .line 56
    .line 57
    if-ne v0, v4, :cond_1

    .line 58
    .line 59
    move v4, v1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move v4, v2

    .line 62
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/calendar/alerts/AlertActivity;->m0(Z)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    aput-object v4, v3, v0

    .line 67
    .line 68
    iget-object v3, p0, Lcom/android/calendar/alerts/AlertActivity;->f:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    iget-object v4, p0, Lcom/android/calendar/alerts/AlertActivity;->n:[Landroid/view/View;

    .line 71
    .line 72
    aget-object v4, v4, v0

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->f:Landroid/widget/LinearLayout;

    .line 81
    .line 82
    const/16 v1, 0x8

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-void
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

.method public static synthetic Y(Lcom/android/calendar/alerts/AlertActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/alerts/AlertActivity;->u0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Z(Lcom/android/calendar/alerts/AlertActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/alerts/AlertActivity;->w0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic a0(Lcom/android/calendar/alerts/AlertActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/alerts/AlertActivity;->v0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b0(Lcom/android/calendar/alerts/AlertActivity;Lcom/miui/calendar/alerts/entities/BaseAlert;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/alerts/AlertActivity;->x0(Lcom/miui/calendar/alerts/entities/BaseAlert;)V

    return-void
.end method

.method static synthetic c0(Lcom/android/calendar/alerts/AlertActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->q0()Z

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
.end method

.method static synthetic d0(Lcom/android/calendar/alerts/AlertActivity;)Lmiuix/appcompat/app/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/alerts/AlertActivity;->g:Lmiuix/appcompat/app/l;

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

.method static synthetic e0(Lcom/android/calendar/alerts/AlertActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->z0()Z

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
.end method

.method static synthetic f0(Lcom/android/calendar/alerts/AlertActivity;)[Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/alerts/AlertActivity;->n:[Landroid/view/View;

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

.method static synthetic g0(Lcom/android/calendar/alerts/AlertActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/alerts/AlertActivity;->o:I

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

.method static synthetic h0(Lcom/android/calendar/alerts/AlertActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/alerts/AlertActivity;->o:I

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

.method static synthetic i0(Lcom/android/calendar/alerts/AlertActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

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

.method static synthetic j0(Lcom/android/calendar/alerts/AlertActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

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

.method static synthetic k0(Lcom/android/calendar/alerts/AlertActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/alerts/AlertActivity;->s0(I)V

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

.method static synthetic l0(Lcom/android/calendar/alerts/AlertActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->B0()V

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

.method private m0(Z)Landroid/view/View;
    .locals 4

    .line 1
    new-instance v0, Landroid/view/View;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const v2, 0x7f07011a

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const v3, 0x7f070118

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    .line 30
    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    const p1, 0x7f0800cc

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const p1, 0x7f0800cb

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-object v0
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method private n0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->d:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f0d0206

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->d:Landroid/view/View;

    .line 24
    .line 25
    const v1, 0x7f0a0090

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->e:Landroidx/viewpager/widget/ViewPager;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->d:Landroid/view/View;

    .line 37
    .line 38
    const v1, 0x7f0a0245

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/LinearLayout;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->f:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->e:Landroidx/viewpager/widget/ViewPager;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->b:Lcom/android/calendar/alerts/b;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/b;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->e:Landroidx/viewpager/widget/ViewPager;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->r:Landroidx/viewpager/widget/ViewPager$j;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->b:Lcom/android/calendar/alerts/b;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->v:Lcom/android/calendar/alerts/b$b;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/android/calendar/alerts/b;->w(Lcom/android/calendar/alerts/b$b;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    new-instance v0, Lmiuix/appcompat/app/l$b;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/l$b;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    const v1, 0x7f12006d

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l$b;->F(I)Lmiuix/appcompat/app/l$b;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->d:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l$b;->I(Landroid/view/View;)Lmiuix/appcompat/app/l$b;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l$b;->d(Z)Lmiuix/appcompat/app/l$b;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v2, Lo1/d;

    .line 94
    .line 95
    invoke-direct {v2, p0}, Lo1/d;-><init>(Lcom/android/calendar/alerts/AlertActivity;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/l$b;->y(Landroid/content/DialogInterface$OnKeyListener;)Lmiuix/appcompat/app/l$b;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const v2, 0x7f120068

    .line 103
    .line 104
    .line 105
    new-instance v3, Lo1/e;

    .line 106
    .line 107
    invoke-direct {v3, p0}, Lo1/e;-><init>(Lcom/android/calendar/alerts/AlertActivity;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/l$b;->z(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const v2, 0x7f1204f3

    .line 115
    .line 116
    .line 117
    new-instance v3, Lo1/f;

    .line 118
    .line 119
    invoke-direct {v3, p0}, Lo1/f;-><init>(Lcom/android/calendar/alerts/AlertActivity;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/l$b;->r(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lmiuix/appcompat/app/l$b;->a()Lmiuix/appcompat/app/l;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->g:Lmiuix/appcompat/app/l;

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l;->setCanceledOnTouchOutside(Z)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->g:Lmiuix/appcompat/app/l;

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->g:Lmiuix/appcompat/app/l;

    .line 141
    .line 142
    const/4 v1, -0x1

    .line 143
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l;->e(I)Landroid/widget/Button;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    new-instance v1, Lcom/android/calendar/alerts/AlertActivity$b;

    .line 148
    .line 149
    invoke-direct {v1, p0}, Lcom/android/calendar/alerts/AlertActivity$b;-><init>(Lcom/android/calendar/alerts/AlertActivity;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->g:Lmiuix/appcompat/app/l;

    .line 156
    .line 157
    const/4 v1, -0x2

    .line 158
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l;->e(I)Landroid/widget/Button;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    new-instance v1, Lcom/android/calendar/alerts/AlertActivity$c;

    .line 163
    .line 164
    invoke-direct {v1, p0}, Lcom/android/calendar/alerts/AlertActivity$c;-><init>(Lcom/android/calendar/alerts/AlertActivity;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    return-void
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

.method private o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->l:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    return-void
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

.method private p0(J)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "state"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "_id="

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/android/calendar/alerts/AlertActivity;->c:Landroid/content/ContentResolver;

    .line 42
    .line 43
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p2, v1, v0, p1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void
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

.method private q0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/android/calendar/alerts/AlertActivity;->o:I

    .line 10
    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getNotificationId()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-direct {p0, v1}, Lcom/android/calendar/alerts/AlertActivity;->s0(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAlertId()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-long v0, v0

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/alerts/AlertActivity;->p0(J)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 37
    .line 38
    iget v1, p0, Lcom/android/calendar/alerts/AlertActivity;->o:I

    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->B0()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    return v0

    .line 53
    :cond_0
    const/4 v0, -0x1

    .line 54
    invoke-direct {p0, v0}, Lcom/android/calendar/alerts/AlertActivity;->s0(I)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    return v0
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

.method private r0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->l:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-wide/32 v2, 0x927c0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 13
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
.end method

.method private s0(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-static {p0, p1}, Lo1/i;->c(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Lo1/i;->b(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Lo1/a;->g(Z)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lo1/a;->l()V

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private t0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->g:Lmiuix/appcompat/app/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l;->e(I)Landroid/widget/Button;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
    .line 20
    .line 21
    .line 22
.end method

.method private synthetic u0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->t0()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string p3, "createReminderDialog(): isBackDisabled: "

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string p3, "Cal:D:AlertActivity"

    .line 39
    .line 40
    invoke-static {p3, p2}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return p1

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    return p1
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

.method private synthetic v0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const-string p1, "key_alert_dialog_click_got_it"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->q0()Z

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

.method private synthetic w0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const-string p1, "key_alert_dialog_click_reminder_later"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->z0()Z

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

.method private synthetic x0(Lcom/miui/calendar/alerts/entities/BaseAlert;)V
    .locals 9

    .line 1
    const-string v0, "Cal:D:AlertActivity"

    .line 2
    .line 3
    const-string v1, "onItemClick()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    const-string v0, "key_alert_dialog_click_agenda"

    .line 11
    .line 12
    invoke-static {v0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventId()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getBeginAt()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-virtual {p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEndAt()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    invoke-virtual {p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventType()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    move-object v1, p0

    .line 32
    invoke-static/range {v1 .. v8}, Lo1/g;->a(Landroid/content/Context;JJJI)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-gt v0, v1, :cond_1

    .line 46
    .line 47
    :cond_0
    const-string v0, "back_home"

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 v0, 0x4

    .line 53
    const-string v1, "extra_launch_from"

    .line 54
    .line 55
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->q0()Z

    .line 62
    .line 63
    .line 64
    return-void
    .line 65
.end method

.method private y0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "extra_key_alert"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->B0()V

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

.method private z0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/android/calendar/alerts/AlertActivity;->o:I

    .line 10
    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getNotificationId()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-direct {p0, v1}, Lcom/android/calendar/alerts/AlertActivity;->s0(I)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Landroid/content/Intent;

    .line 29
    .line 30
    const-string v2, "com.android.calendar.SET_REMINDER_LATER"

    .line 31
    .line 32
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-class v2, Lcom/android/calendar/alerts/AlertLaterReceiver;

    .line 36
    .line 37
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string v2, "extra_key_alert"

    .line 41
    .line 42
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 49
    .line 50
    iget v1, p0, Lcom/android/calendar/alerts/AlertActivity;->o:I

    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->B0()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    return v0

    .line 65
    :cond_0
    const/4 v0, -0x1

    .line 66
    invoke-direct {p0, v0}, Lcom/android/calendar/alerts/AlertActivity;->s0(I)V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    return v0
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->t0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Cal:D:AlertActivity"

    .line 8
    .line 9
    const-string v1, "onBackPressed(): just return"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-super {p0}, Lmiuix/appcompat/app/m;->onBackPressed()V

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "Cal:D:AlertActivity"

    .line 5
    .line 6
    const-string v1, "onCreate()"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0d0045

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/m;->setContentView(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "miui.intent.extra_calendar_reminder_alarm_alert"

    .line 26
    .line 27
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput-boolean v0, p0, Lcom/android/calendar/alerts/AlertActivity;->j:Z

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "miui.intent.extra_calendar_reminder_screen_on"

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput-boolean v0, p0, Lcom/android/calendar/alerts/AlertActivity;->k:Z

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const v1, 0x680003

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x80

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const v1, 0x3e99999a    # 0.3f

    .line 68
    .line 69
    .line 70
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 71
    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->c:Landroid/content/ContentResolver;

    .line 77
    .line 78
    new-instance v0, Lcom/android/calendar/alerts/b;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/android/calendar/alerts/b;-><init>(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->b:Lcom/android/calendar/alerts/b;

    .line 84
    .line 85
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->y0()V

    .line 86
    .line 87
    .line 88
    if-nez p1, :cond_1

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 91
    .line 92
    .line 93
    :cond_1
    new-instance p1, Lcom/android/calendar/alerts/AlertActivity$e;

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-direct {p1, p0, v0}, Lcom/android/calendar/alerts/AlertActivity$e;-><init>(Lcom/android/calendar/alerts/AlertActivity;Lcom/android/calendar/alerts/AlertActivity$a;)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActivity;->h:Lcom/android/calendar/alerts/AlertActivity$e;

    .line 100
    .line 101
    iget-boolean p1, p0, Lcom/android/calendar/alerts/AlertActivity;->i:Z

    .line 102
    .line 103
    if-nez p1, :cond_2

    .line 104
    .line 105
    new-instance p1, Landroid/content/IntentFilter;

    .line 106
    .line 107
    const-string v0, "android.intent.action.KEYCODE_POWER_UP"

    .line 108
    .line 109
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v0, "com.miui.calendar.action.STOP_ALERT_ACTIVITY"

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->h:Lcom/android/calendar/alerts/AlertActivity$e;

    .line 123
    .line 124
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    iput-boolean v2, p0, Lcom/android/calendar/alerts/AlertActivity;->i:Z

    .line 128
    .line 129
    :cond_2
    iget-boolean p1, p0, Lcom/android/calendar/alerts/AlertActivity;->j:Z

    .line 130
    .line 131
    if-nez p1, :cond_3

    .line 132
    .line 133
    iget-boolean p1, p0, Lcom/android/calendar/alerts/AlertActivity;->k:Z

    .line 134
    .line 135
    if-eqz p1, :cond_4

    .line 136
    .line 137
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->r0()V

    .line 138
    .line 139
    .line 140
    :cond_4
    const-string p1, "phone"

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 147
    .line 148
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActivity;->p:Landroid/telephony/TelephonyManager;

    .line 149
    .line 150
    if-eqz p1, :cond_5

    .line 151
    .line 152
    invoke-static {p0}, Lg4/a;->e(Landroid/content/Context;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_5

    .line 157
    .line 158
    iget-object p1, p0, Lcom/android/calendar/alerts/AlertActivity;->p:Landroid/telephony/TelephonyManager;

    .line 159
    .line 160
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->q:Landroid/telephony/PhoneStateListener;

    .line 161
    .line 162
    const/16 v1, 0x20

    .line 163
    .line 164
    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 165
    .line 166
    .line 167
    :cond_5
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->n0()V

    .line 168
    .line 169
    .line 170
    return-void
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
.end method

.method protected onDestroy()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Cal:D:AlertActivity"

    .line 5
    .line 6
    const-string v1, "onDestroy()"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/calendar/alerts/AlertActivity;->g:Lmiuix/appcompat/app/l;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lmiuix/appcompat/app/l;->c()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/alerts/AlertActivity;->p:Landroid/telephony/TelephonyManager;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/calendar/alerts/AlertActivity;->q:Landroid/telephony/PhoneStateListener;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 24
    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/android/calendar/alerts/AlertActivity;->j:Z

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->o0()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-boolean v2, p0, Lcom/android/calendar/alerts/AlertActivity;->i:Z

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/calendar/alerts/AlertActivity;->h:Lcom/android/calendar/alerts/AlertActivity$e;

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 40
    .line 41
    .line 42
    iput-boolean v4, p0, Lcom/android/calendar/alerts/AlertActivity;->i:Z

    .line 43
    .line 44
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 45
    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getNotificationId()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-direct {p0, v2}, Lcom/android/calendar/alerts/AlertActivity;->s0(I)V

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v1, v4}, Lcom/android/calendar/alerts/c;->e(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/BaseAlert;I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 88
    .line 89
    :cond_4
    return-void
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

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "miui.intent.extra_calendar_reminder_alarm_alert"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput-boolean p1, p0, Lcom/android/calendar/alerts/AlertActivity;->j:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "miui.intent.extra_calendar_reminder_screen_on"

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput-boolean p1, p0, Lcom/android/calendar/alerts/AlertActivity;->k:Z

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const v0, 0x780001

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 43
    .line 44
    .line 45
    const/16 v0, 0x80

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const v0, 0x3e99999a    # 0.3f

    .line 55
    .line 56
    .line 57
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 58
    .line 59
    :cond_0
    iget-boolean p1, p0, Lcom/android/calendar/alerts/AlertActivity;->j:Z

    .line 60
    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    iget-boolean p1, p0, Lcom/android/calendar/alerts/AlertActivity;->k:Z

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->r0()V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v0, "extra_key_alert"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->m:Ljava/util/List;

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->B0()V

    .line 92
    .line 93
    .line 94
    return-void
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
.end method

.method protected onPause()V
    .locals 2

    .line 1
    const-string v0, "Cal:D:AlertActivity"

    .line 2
    .line 3
    const-string v1, "onPause()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/d;->onPause()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/calendar/alerts/AlertActivity;->k:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/android/calendar/alerts/AlertActivity;->A0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
    .line 20
    .line 21
    .line 22
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/calendar/common/b;->onResume()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Cal:D:AlertActivity"

    .line 5
    .line 6
    const-string v1, "onResume()"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/calendar/alerts/AlertActivity;->k:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p0, v0}, Lcom/android/calendar/alerts/AlertActivity;->A0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
    .line 20
    .line 21
    .line 22
.end method
