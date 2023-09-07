.class public final Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;
.super Lcom/android/calendar/common/b;
.source "CalDavLoginActivity.kt"

# interfaces
.implements Lcom/android/calendar/syncer/CalDavService$c;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$a;,
        Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0007\u0018\u0000 F2\u00020\u00012\u00020\u0002:\u0001GB\u0007\u00a2\u0006\u0004\u0008D\u0010EJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0005\u001a\u00020\u0003H\u0002J\u0008\u0010\u0006\u001a\u00020\u0003H\u0002J\u0008\u0010\u0007\u001a\u00020\u0003H\u0002J\u0008\u0010\u0008\u001a\u00020\u0003H\u0002J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\"\u0010\u0011\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014J\u0018\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0008\u0010\u0017\u001a\u00020\u0003H\u0014R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001c\u0010 \u001a\u0008\u0018\u00010\u001cR\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u001b\u0010.\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-R\u001b\u00103\u001a\u00020/8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010+\u001a\u0004\u00081\u00102R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u0010+\u001a\u0004\u00086\u00107R\u001b\u0010=\u001a\u0002098BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u0010+\u001a\u0004\u0008;\u0010<R!\u0010C\u001a\u0008\u0012\u0004\u0012\u00020?0>8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008@\u0010+\u001a\u0004\u0008A\u0010B\u00a8\u0006H"
    }
    d2 = {
        "Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;",
        "Lcom/android/calendar/common/b;",
        "Lcom/android/calendar/syncer/CalDavService$c;",
        "Lkotlin/u;",
        "i0",
        "r0",
        "x0",
        "w0",
        "v0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "",
        "id",
        "",
        "refreshing",
        "n",
        "onDestroy",
        "Landroid/os/Handler;",
        "c",
        "Landroid/os/Handler;",
        "mHandler",
        "Lcom/android/calendar/syncer/CalDavService$b;",
        "Lcom/android/calendar/syncer/CalDavService;",
        "d",
        "Lcom/android/calendar/syncer/CalDavService$b;",
        "davService",
        "Landroid/content/ServiceConnection;",
        "e",
        "Landroid/content/ServiceConnection;",
        "mServiceConnection",
        "Lcom/miui/calendar/view/x;",
        "f",
        "Lcom/miui/calendar/view/x;",
        "mProgressDialog",
        "Lcom/android/calendar/syncer/model/LoginModel;",
        "g",
        "Lkotlin/f;",
        "m0",
        "()Lcom/android/calendar/syncer/model/LoginModel;",
        "loginModel",
        "Ln4/a;",
        "h",
        "o0",
        "()Ln4/a;",
        "mCalDavModel",
        "Lcom/android/calendar/syncer/model/DetectConfigurationModel;",
        "i",
        "q0",
        "()Lcom/android/calendar/syncer/model/DetectConfigurationModel;",
        "mDetectConfigModel",
        "Lcom/android/calendar/syncer/model/AccountDetailsModel;",
        "j",
        "n0",
        "()Lcom/android/calendar/syncer/model/AccountDetailsModel;",
        "mAccountModel",
        "Landroidx/lifecycle/v;",
        "",
        "k",
        "p0",
        "()Landroidx/lifecycle/v;",
        "mDataObserver",
        "<init>",
        "()V",
        "m",
        "a",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final m:Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$a;


# instance fields
.field private b:Lx1/a;

.field private final c:Landroid/os/Handler;

.field private volatile d:Lcom/android/calendar/syncer/CalDavService$b;

.field private final e:Landroid/content/ServiceConnection;

.field private f:Lcom/miui/calendar/view/x;

.field private final g:Lkotlin/f;

.field private final h:Lkotlin/f;

.field private final i:Lkotlin/f;

.field private final j:Lkotlin/f;

.field private final k:Lkotlin/f;

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->m:Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->l:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/common/b;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->c:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$c;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$c;-><init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->e:Landroid/content/ServiceConnection;

    .line 24
    .line 25
    new-instance v0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$loginModel$2;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$loginModel$2;-><init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/g;->b(Lw7/a;)Lkotlin/f;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->g:Lkotlin/f;

    .line 35
    .line 36
    new-instance v0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$mCalDavModel$2;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$mCalDavModel$2;-><init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/g;->b(Lw7/a;)Lkotlin/f;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->h:Lkotlin/f;

    .line 46
    .line 47
    new-instance v0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$mDetectConfigModel$2;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$mDetectConfigModel$2;-><init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/g;->b(Lw7/a;)Lkotlin/f;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->i:Lkotlin/f;

    .line 57
    .line 58
    new-instance v0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$mAccountModel$2;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$mAccountModel$2;-><init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/g;->b(Lw7/a;)Lkotlin/f;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->j:Lkotlin/f;

    .line 68
    .line 69
    new-instance v0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$mDataObserver$2;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$mDataObserver$2;-><init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lkotlin/g;->b(Lw7/a;)Lkotlin/f;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->k:Lkotlin/f;

    .line 79
    .line 80
    return-void
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

.method public static synthetic Y(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->t0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->s0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->j0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->u0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->l0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->k0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;)V

    return-void
.end method

.method public static final synthetic e0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)Lcom/android/calendar/syncer/CalDavService$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->d:Lcom/android/calendar/syncer/CalDavService$b;

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

.method public static final synthetic f0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)Ln4/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->o0()Ln4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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

.method public static final synthetic g0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)Lx1/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->b:Lx1/a;

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

.method public static final synthetic h0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Lcom/android/calendar/syncer/CalDavService$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->d:Lcom/android/calendar/syncer/CalDavService$b;

    .line 2
    .line 3
    return-void
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

.method private final i0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->o0()Ln4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ln4/a;->i()Landroidx/lifecycle/u;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->p0()Landroidx/lifecycle/v;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/v;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->o0()Ln4/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ln4/a;->g()Landroidx/lifecycle/u;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->p0()Landroidx/lifecycle/v;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/v;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->o0()Ln4/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ln4/a;->f()Landroidx/lifecycle/u;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->p0()Landroidx/lifecycle/v;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/v;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->o0()Ln4/a;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ln4/a;->e()Landroidx/lifecycle/u;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lcom/miui/calendar/sync/protocol/d;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/miui/calendar/sync/protocol/d;-><init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/v;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->q0()Lcom/android/calendar/syncer/model/DetectConfigurationModel;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->getResult()Landroidx/lifecycle/u;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lcom/miui/calendar/sync/protocol/e;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Lcom/miui/calendar/sync/protocol/e;-><init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/v;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->n0()Lcom/android/calendar/syncer/model/AccountDetailsModel;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/android/calendar/syncer/model/AccountDetailsModel;->getResult()Landroidx/lifecycle/u;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Lcom/miui/calendar/sync/protocol/f;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/miui/calendar/sync/protocol/f;-><init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/v;)V

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

.method private static final j0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 19
    :goto_1
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 26
    .line 27
    .line 28
    :cond_2
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
.end method

.method private static final k0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;)V
    .locals 13

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->f:Lcom/miui/calendar/view/x;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const p1, 0x7f120658

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "detectConfiguration configuration:"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "Cal:D:CalDavLoginActivity"

    .line 49
    .line 50
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;->b()Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    const/4 v1, -0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    sget-object v3, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$b;->a:[I

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    aget v1, v3, v1

    .line 68
    .line 69
    :goto_0
    const/4 v3, 0x1

    .line 70
    if-eq v1, v3, :cond_11

    .line 71
    .line 72
    const/4 v4, 0x2

    .line 73
    if-eq v1, v4, :cond_f

    .line 74
    .line 75
    const/4 v4, 0x3

    .line 76
    if-eq v1, v4, :cond_d

    .line 77
    .line 78
    const/4 v4, 0x4

    .line 79
    if-eq v1, v4, :cond_b

    .line 80
    .line 81
    const/4 v4, 0x5

    .line 82
    if-eq v1, v4, :cond_b

    .line 83
    .line 84
    const-string v1, "get config success."

    .line 85
    .line 86
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->m0()Lcom/android/calendar/syncer/model/LoginModel;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1, p1}, Lcom/android/calendar/syncer/model/LoginModel;->setConfiguration(Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->n0()Lcom/android/calendar/syncer/model/AccountDetailsModel;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/android/calendar/syncer/model/AccountDetailsModel;->getName()Landroidx/lifecycle/u;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p1}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;->a()Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;->b()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-eqz v4, :cond_3

    .line 115
    .line 116
    invoke-static {v4}, Lkotlin/collections/t;->a0(Ljava/util/List;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Ljava/lang/String;

    .line 121
    .line 122
    if-nez v4, :cond_5

    .line 123
    .line 124
    :cond_3
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->m0()Lcom/android/calendar/syncer/model/LoginModel;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v4}, Lcom/android/calendar/syncer/model/LoginModel;->getCredentials()Lcom/android/calendar/syncer/model/Credentials;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-eqz v4, :cond_4

    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/android/calendar/syncer/model/Credentials;->getUserName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    goto :goto_1

    .line 139
    :cond_4
    const/4 v4, 0x0

    .line 140
    :goto_1
    if-nez v4, :cond_5

    .line 141
    .line 142
    const-string v4, "Unknown"

    .line 143
    .line 144
    :cond_5
    invoke-virtual {v1, v4}, Landroidx/lifecycle/u;->n(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->n0()Lcom/android/calendar/syncer/model/AccountDetailsModel;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/android/calendar/syncer/model/AccountDetailsModel;->getName()Landroidx/lifecycle/u;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Ljava/lang/String;

    .line 160
    .line 161
    if-eqz v1, :cond_7

    .line 162
    .line 163
    invoke-static {v1}, Lkotlin/text/k;->r(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_6

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    move v3, v0

    .line 171
    :cond_7
    :goto_2
    if-eqz v3, :cond_9

    .line 172
    .line 173
    iget-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->f:Lcom/miui/calendar/view/x;

    .line 174
    .line 175
    if-eqz p1, :cond_8

    .line 176
    .line 177
    invoke-virtual {p1}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 178
    .line 179
    .line 180
    :cond_8
    const p1, 0x7f1206b4

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_9
    sget-object v0, Lcom/android/calendar/syncer/account/AccountHelper;->a:Lcom/android/calendar/syncer/account/AccountHelper;

    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    const-string v3, "this@CalDavLoginActivity.applicationContext"

    .line 202
    .line 203
    invoke-static {v5, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    sget-object v4, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_CALENDAR:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 207
    .line 208
    invoke-virtual {v4}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    const/4 v8, 0x0

    .line 213
    const/4 v9, 0x0

    .line 214
    const/4 v10, 0x0

    .line 215
    const/16 v11, 0x38

    .line 216
    .line 217
    const/4 v12, 0x0

    .line 218
    move-object v4, v0

    .line 219
    move-object v6, v1

    .line 220
    invoke-static/range {v4 .. v12}, Lcom/android/calendar/syncer/account/AccountHelper;->e(Lcom/android/calendar/syncer/account/AccountHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/Object;)Landroid/accounts/Account;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    if-eqz v4, :cond_a

    .line 225
    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-static {v5, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v5, v4}, Lcom/android/calendar/syncer/account/AccountHelper;->k(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 234
    .line 235
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    const-string v3, "Account already exist, now remove & recreate.["

    .line 242
    .line 243
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget-object v3, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v3, ", "

    .line 252
    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    iget-object v3, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const/16 v3, 0x5d

    .line 262
    .line 263
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v2, v0}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :cond_a
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->n0()Lcom/android/calendar/syncer/model/AccountDetailsModel;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->m0()Lcom/android/calendar/syncer/model/LoginModel;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-virtual {p0}, Lcom/android/calendar/syncer/model/LoginModel;->getCredentials()Lcom/android/calendar/syncer/model/Credentials;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/calendar/syncer/model/AccountDetailsModel;->createAccountAndStartService(Ljava/lang/String;Lcom/android/calendar/syncer/model/Credentials;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;)V

    .line 289
    .line 290
    .line 291
    :goto_3
    return-void

    .line 292
    :cond_b
    iget-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->f:Lcom/miui/calendar/view/x;

    .line 293
    .line 294
    if-eqz p1, :cond_c

    .line 295
    .line 296
    invoke-virtual {p1}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 297
    .line 298
    .line 299
    :cond_c
    const p1, 0x7f1206b5

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :cond_d
    iget-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->f:Lcom/miui/calendar/view/x;

    .line 315
    .line 316
    if-eqz p1, :cond_e

    .line 317
    .line 318
    invoke-virtual {p1}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 319
    .line 320
    .line 321
    :cond_e
    const p1, 0x7f120656

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :cond_f
    iget-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->f:Lcom/miui/calendar/view/x;

    .line 337
    .line 338
    if-eqz p1, :cond_10

    .line 339
    .line 340
    invoke-virtual {p1}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 341
    .line 342
    .line 343
    :cond_10
    const p1, 0x7f12065d

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :cond_11
    iget-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->f:Lcom/miui/calendar/view/x;

    .line 359
    .line 360
    if-eqz p1, :cond_12

    .line 361
    .line 362
    invoke-virtual {p1}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 363
    .line 364
    .line 365
    :cond_12
    const p1, 0x7f120655

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 373
    .line 374
    .line 375
    move-result-object p0

    .line 376
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 377
    .line 378
    .line 379
    return-void
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

.method private static final l0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "success"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Landroid/content/Intent;

    .line 18
    .line 19
    const-class v0, Lcom/android/calendar/syncer/CalDavService;

    .line 20
    .line 21
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->e:Landroid/content/ServiceConnection;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const p1, 0x7f120657

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->f:Lcom/miui/calendar/view/x;

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
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
.end method

.method private final m0()Lcom/android/calendar/syncer/model/LoginModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->g:Lkotlin/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/calendar/syncer/model/LoginModel;

    .line 8
    .line 9
    return-object v0
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

.method private final n0()Lcom/android/calendar/syncer/model/AccountDetailsModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->j:Lkotlin/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/calendar/syncer/model/AccountDetailsModel;

    .line 8
    .line 9
    return-object v0
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

.method private final o0()Ln4/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->h:Lkotlin/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ln4/a;

    .line 8
    .line 9
    return-object v0
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

.method private final p0()Landroidx/lifecycle/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->k:Lkotlin/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/v;

    .line 8
    .line 9
    return-object v0
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

.method private final q0()Lcom/android/calendar/syncer/model/DetectConfigurationModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->i:Lkotlin/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/calendar/syncer/model/DetectConfigurationModel;

    .line 8
    .line 9
    return-object v0
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

.method private final r0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->J()Lmiuix/appcompat/app/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const v1, 0x7f12005e

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->A(I)V

    .line 12
    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private static final s0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->m0()Lcom/android/calendar/syncer/model/LoginModel;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/android/calendar/syncer/model/LoginModel;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->o0()Ln4/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->m0()Lcom/android/calendar/syncer/model/LoginModel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ln4/a;->j(Lcom/android/calendar/syncer/model/LoginModel;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->v0()V

    .line 28
    .line 29
    .line 30
    :cond_0
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
.end method

.method private static final t0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/miui/calendar/sync/NewEventImportActivity;->r:Lcom/miui/calendar/sync/NewEventImportActivity$b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/miui/calendar/sync/NewEventImportActivity$b;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p0, p1}, Lcom/miui/calendar/web/d;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    const-string p0, "key_click_import_help"

    .line 20
    .line 21
    invoke-static {p0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

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
.end method

.method private static final u0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->f:Lcom/miui/calendar/view/x;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->f:Lcom/miui/calendar/view/x;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->x0()V

    .line 17
    .line 18
    .line 19
    const v0, 0x7f12029e

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->G0(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->finish()V

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

.method private final v0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->w0()V

    .line 2
    .line 3
    .line 4
    const-string v0, "key_click_import_by_caldav_btn"

    .line 5
    .line 6
    invoke-static {v0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->q0()Lcom/android/calendar/syncer/model/DetectConfigurationModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->m0()Lcom/android/calendar/syncer/model/LoginModel;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->detectConfiguration(Lcom/android/calendar/syncer/model/LoginModel;)V

    .line 18
    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method private final w0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->f:Lcom/miui/calendar/view/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/miui/calendar/view/x;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/miui/calendar/view/x;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    const v1, 0x7f1202fd

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "getString(R.string.logining_caldav_account)"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/x;->D(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l;->setCancelable(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l;->setCanceledOnTouchOutside(Z)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/x;->A(Z)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->f:Lcom/miui/calendar/view/x;

    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 45
    .line 46
    .line 47
    return-void
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

.method private final x0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->d:Lcom/android/calendar/syncer/CalDavService$b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->d:Lcom/android/calendar/syncer/CalDavService$b;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/android/calendar/syncer/CalDavService$b;->b(Lcom/android/calendar/syncer/CalDavService$c;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->e:Landroid/content/ServiceConnection;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->d:Lcom/android/calendar/syncer/CalDavService$b;

    .line 19
    .line 20
    :cond_1
    return-void
    .line 21
    .line 22
.end method


# virtual methods
.method public n(JZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onDavRefreshStatusChanged id:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ", refreshing:"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "Cal:D:CalDavLoginActivity"

    .line 27
    .line 28
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    if-nez p3, :cond_0

    .line 32
    .line 33
    const-string p1, "key_import_by_caldav_success"

    .line 34
    .line 35
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lcom/android/calendar/syncer/g;->a:Lcom/android/calendar/syncer/g;

    .line 39
    .line 40
    new-instance p2, Landroid/accounts/Account;

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->n0()Lcom/android/calendar/syncer/model/AccountDetailsModel;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {p3}, Lcom/android/calendar/syncer/model/AccountDetailsModel;->getName()Landroidx/lifecycle/u;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    check-cast p3, Ljava/lang/String;

    .line 55
    .line 56
    sget-object v0, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_CALENDAR:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p2, p3, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p0, p2}, Lcom/android/calendar/syncer/g;->a(Landroid/content/Context;Landroid/accounts/Account;)Z

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->c:Landroid/os/Handler;

    .line 69
    .line 70
    new-instance p2, Lcom/miui/calendar/sync/protocol/a;

    .line 71
    .line 72
    invoke-direct {p2, p0}, Lcom/miui/calendar/sync/protocol/a;-><init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v0, 0x32

    .line 76
    .line 77
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
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
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$d;

    .line 5
    .line 6
    invoke-direct {p3, p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$d;-><init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1, p2, p3}, Lcom/miui/calendar/util/z0;->r(Landroid/content/Context;IILcom/miui/calendar/util/z0$h;)Z

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lx1/a;->a(Landroid/view/LayoutInflater;)Lx1/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "inflate(layoutInflater)"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->b:Lx1/a;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const-string v1, "mViewBinding"

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object p1, v0

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/m;->setContentView(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->r0()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->b:Lx1/a;

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    move-object p1, v0

    .line 46
    :cond_1
    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/n;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->b:Lx1/a;

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move-object p1, v0

    .line 57
    :cond_2
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->o0()Ln4/a;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p1, v2}, Lx1/a;->c(Ln4/a;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->b:Lx1/a;

    .line 65
    .line 66
    if-nez p1, :cond_3

    .line 67
    .line 68
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move-object p1, v0

    .line 72
    :cond_3
    iget-object p1, p1, Lx1/a;->a:Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->i0()V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->b:Lx1/a;

    .line 81
    .line 82
    if-nez p1, :cond_4

    .line 83
    .line 84
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object p1, v0

    .line 88
    :cond_4
    iget-object p1, p1, Lx1/a;->a:Landroid/widget/TextView;

    .line 89
    .line 90
    new-instance v2, Lcom/miui/calendar/sync/protocol/b;

    .line 91
    .line 92
    invoke-direct {v2, p0}, Lcom/miui/calendar/sync/protocol/b;-><init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/miui/calendar/util/i;->g()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_6

    .line 103
    .line 104
    iget-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->b:Lx1/a;

    .line 105
    .line 106
    if-nez p1, :cond_5

    .line 107
    .line 108
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    move-object p1, v0

    .line 112
    :cond_5
    iget-object p1, p1, Lx1/a;->b:Landroid/widget/TextView;

    .line 113
    .line 114
    const/16 v2, 0x8

    .line 115
    .line 116
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    :cond_6
    iget-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->b:Lx1/a;

    .line 120
    .line 121
    if-nez p1, :cond_7

    .line 122
    .line 123
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_7
    move-object v0, p1

    .line 128
    :goto_0
    iget-object p1, v0, Lx1/a;->b:Landroid/widget/TextView;

    .line 129
    .line 130
    new-instance v0, Lcom/miui/calendar/sync/protocol/c;

    .line 131
    .line 132
    invoke-direct {v0, p0}, Lcom/miui/calendar/sync/protocol/c;-><init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->l(Landroid/app/Activity;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_8

    .line 143
    .line 144
    invoke-static {}, Lcom/miui/calendar/util/z0;->m()Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-nez p1, :cond_8

    .line 149
    .line 150
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->i(Landroid/content/Context;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_8

    .line 155
    .line 156
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->B(Landroid/app/Activity;)Z

    .line 157
    .line 158
    .line 159
    :cond_8
    return-void
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->x0()V

    .line 5
    .line 6
    .line 7
    return-void
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
