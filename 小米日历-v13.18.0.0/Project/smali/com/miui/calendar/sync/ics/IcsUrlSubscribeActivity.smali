.class public final Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;
.super Lcom/miui/calendar/sync/ics/a;
.source "IcsUrlSubscribeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\t*\u0001\u0019\u0018\u0000 \u001f2\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\"\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\u0012\u0010\r\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\tH\u0014J\u0008\u0010\u000e\u001a\u00020\u0006H\u0016J\u0008\u0010\u000f\u001a\u00020\u0004H\u0014J\u0008\u0010\u0010\u001a\u00020\u0004H\u0016R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;",
        "Lcom/miui/calendar/sync/ics/a;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Lkotlin/u;",
        "onCreate",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "intent",
        "onNewIntent",
        "e0",
        "onDestroy",
        "q0",
        "Lmiuix/androidbasewidget/widget/StateEditText;",
        "k",
        "Lmiuix/androidbasewidget/widget/StateEditText;",
        "mUrlText",
        "Landroid/widget/TextView;",
        "l",
        "Landroid/widget/TextView;",
        "mBtnImport",
        "com/miui/calendar/sync/ics/IcsUrlSubscribeActivity$b",
        "m",
        "Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$b;",
        "mTextWatcher",
        "<init>",
        "()V",
        "o",
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
.field public static final o:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$a;


# instance fields
.field private k:Lmiuix/androidbasewidget/widget/StateEditText;

.field private l:Landroid/widget/TextView;

.field private final m:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$b;

.field public n:Ljava/util/Map;
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

    new-instance v0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->o:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$a;

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
    iput-object v0, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->n:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/miui/calendar/sync/ics/a;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$b;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$b;-><init>(Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->m:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$b;

    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static synthetic l0(Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->p0(Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->o0(Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic n0(Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->l:Landroid/widget/TextView;

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

.method private static final o0(Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->q0()V

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

.method private static final p0(Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;Landroid/view/View;)V
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


# virtual methods
.method public e0()I
    .locals 1

    const v0, 0x7f12028d

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$c;

    .line 5
    .line 6
    invoke-direct {p3, p0}, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$c;-><init>(Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;)V

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
    invoke-super {p0, p1}, Lcom/miui/calendar/sync/ics/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0034

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/m;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0a06a6

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "findViewById<StateEditText>(R.id.url_text)"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p1, Lmiuix/androidbasewidget/widget/StateEditText;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->k:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 25
    .line 26
    const p1, 0x7f0a032c

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "findViewById<TextView>(R.id.import_btn)"

    .line 34
    .line 35
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast p1, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->l:Landroid/widget/TextView;

    .line 41
    .line 42
    const-string v0, "mBtnImport"

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    move-object p1, v1

    .line 51
    :cond_0
    new-instance v2, Lcom/miui/calendar/sync/ics/g;

    .line 52
    .line 53
    invoke-direct {v2, p0}, Lcom/miui/calendar/sync/ics/g;-><init>(Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->l:Landroid/widget/TextView;

    .line 60
    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    move-object p1, v1

    .line 67
    :cond_1
    const/4 v2, 0x0

    .line 68
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->l:Landroid/widget/TextView;

    .line 72
    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move-object p1, v1

    .line 79
    :cond_2
    invoke-static {p1}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->k:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 83
    .line 84
    const-string v0, "mUrlText"

    .line 85
    .line 86
    if-nez p1, :cond_3

    .line 87
    .line 88
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    move-object p1, v1

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->m:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$b;

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->k:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 108
    .line 109
    if-nez p1, :cond_4

    .line 110
    .line 111
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    move-object v1, p1

    .line 116
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Lkotlin/text/k;->L0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    const p1, 0x7f0a032f

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-static {}, Lcom/miui/calendar/util/i;->g()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_6

    .line 153
    .line 154
    const/16 v0, 0x8

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    :cond_6
    new-instance v0, Lcom/miui/calendar/sync/ics/h;

    .line 160
    .line 161
    invoke-direct {v0, p0}, Lcom/miui/calendar/sync/ics/h;-><init>(Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->l(Landroid/app/Activity;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_7

    .line 172
    .line 173
    invoke-static {}, Lcom/miui/calendar/util/z0;->m()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-nez p1, :cond_7

    .line 178
    .line 179
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->i(Landroid/content/Context;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-nez p1, :cond_7

    .line 184
    .line 185
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->B(Landroid/app/Activity;)Z

    .line 186
    .line 187
    .line 188
    :cond_7
    return-void
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
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/calendar/sync/ics/a;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->k:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "mUrlText"

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->m:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$b;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 17
    .line 18
    .line 19
    return-void
    .line 20
    .line 21
    .line 22
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v1, v0

    .line 13
    :goto_0
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->k:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string v1, "mUrlText"

    .line 20
    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object v0, v1

    .line 26
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lkotlin/text/k;->L0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
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

.method public q0()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->k:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mUrlText"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/h;->getText()Landroid/text/Editable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlin/text/k;->L0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "parse(mUrlText.text.toString().trim())"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/calendar/sync/ics/a;->k0(Landroid/net/Uri;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    const v0, 0x7f12065b

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    const-string v0, "key_click_import_by_url_btn"

    .line 59
    .line 60
    invoke-static {v0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/16 v0, 0x64

    .line 64
    .line 65
    const/4 v1, 0x2

    .line 66
    const/16 v2, 0x1e

    .line 67
    .line 68
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/calendar/sync/ics/a;->j0(III)V

    .line 69
    .line 70
    .line 71
    new-instance v9, Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 74
    .line 75
    .line 76
    sget-object v1, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->SUBSCRIPTION:Lcom/android/calendar/syncer/account/AccountHelper$ImportType;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/android/calendar/syncer/account/AccountHelper$ImportType;->getType()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "import_type"

    .line 83
    .line 84
    invoke-virtual {v9, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sget-object v4, Lcom/android/calendar/syncer/account/AccountHelper;->a:Lcom/android/calendar/syncer/account/AccountHelper;

    .line 88
    .line 89
    invoke-virtual {v4}, Lcom/android/calendar/syncer/account/AccountHelper;->g()Landroid/accounts/Account;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v6, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 94
    .line 95
    const-string v1, "SUBSCRIPTION_ACCOUNT.name"

    .line 96
    .line 97
    invoke-static {v6, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/android/calendar/syncer/account/AccountHelper;->g()Landroid/accounts/Account;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-object v7, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 105
    .line 106
    const-string v1, "SUBSCRIPTION_ACCOUNT.type"

    .line 107
    .line 108
    invoke-static {v7, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v10, 0x1

    .line 113
    const/16 v11, 0x8

    .line 114
    .line 115
    const/4 v12, 0x0

    .line 116
    move-object v5, p0

    .line 117
    invoke-static/range {v4 .. v12}, Lcom/android/calendar/syncer/account/AccountHelper;->e(Lcom/android/calendar/syncer/account/AccountHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/Object;)Landroid/accounts/Account;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    if-nez v4, :cond_2

    .line 122
    .line 123
    return-void

    .line 124
    :cond_2
    const/4 v5, 0x0

    .line 125
    new-instance v6, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d;

    .line 126
    .line 127
    invoke-direct {v6, p0, v0}, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d;-><init>(Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;I)V

    .line 128
    .line 129
    .line 130
    const/4 v7, 0x4

    .line 131
    const/4 v8, 0x0

    .line 132
    move-object v2, p0

    .line 133
    invoke-static/range {v2 .. v8}, Lcom/miui/calendar/sync/ics/a;->g0(Lcom/miui/calendar/sync/ics/a;Landroid/net/Uri;Landroid/accounts/Account;ZLcom/miui/calendar/sync/ics/a$b;ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    return-void
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
