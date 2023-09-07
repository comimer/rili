.class public final Lcom/miui/calendar/view/x$b;
.super Landroid/os/Handler;
.source "ProgressDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/view/x;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miui/calendar/view/x$b",
        "Landroid/os/Handler;",
        "Landroid/os/Message;",
        "msg",
        "Lkotlin/u;",
        "handleMessage",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/view/x;


# direct methods
.method constructor <init>(Lcom/miui/calendar/view/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/view/x$b;->a:Lcom/miui/calendar/view/x;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

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


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/miui/calendar/view/x$b;->a:Lcom/miui/calendar/view/x;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/miui/calendar/view/x;->q(Lcom/miui/calendar/view/x;)Landroid/widget/TextView;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/miui/calendar/view/x$b;->a:Lcom/miui/calendar/view/x;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/miui/calendar/view/x;->p(Lcom/miui/calendar/view/x;)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/miui/calendar/view/x$b;->a:Lcom/miui/calendar/view/x;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/miui/calendar/view/x;->s(Lcom/miui/calendar/view/x;)Ljava/text/NumberFormat;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/miui/calendar/view/x$b;->a:Lcom/miui/calendar/view/x;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/miui/calendar/view/x;->t(Lcom/miui/calendar/view/x;)Landroid/widget/TextView;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lcom/miui/calendar/view/x$b;->a:Lcom/miui/calendar/view/x;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/miui/calendar/view/x;->r(Lcom/miui/calendar/view/x;)Landroid/widget/ProgressBar;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget-object v0, p0, Lcom/miui/calendar/view/x$b;->a:Lcom/miui/calendar/view/x;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/miui/calendar/view/x;->r(Lcom/miui/calendar/view/x;)Landroid/widget/ProgressBar;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    int-to-double v1, p1

    .line 70
    int-to-double v3, v0

    .line 71
    div-double/2addr v1, v3

    .line 72
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 73
    .line 74
    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/miui/calendar/view/x$b;->a:Lcom/miui/calendar/view/x;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/miui/calendar/view/x;->s(Lcom/miui/calendar/view/x;)Ljava/text/NumberFormat;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/miui/calendar/view/x$b;->a:Lcom/miui/calendar/view/x;

    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const v2, 0x7f0600c6

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 111
    .line 112
    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 113
    .line 114
    .line 115
    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    const/16 v3, 0x22

    .line 121
    .line 122
    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/miui/calendar/view/x$b;->a:Lcom/miui/calendar/view/x;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/miui/calendar/view/x;->t(Lcom/miui/calendar/view/x;)Landroid/widget/TextView;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    :cond_0
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
