.class Lmiuix/appcompat/app/s$a;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/s;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/appcompat/app/s;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/s$a;->a:Lmiuix/appcompat/app/s;

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
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lmiuix/appcompat/app/s$a;->a:Lmiuix/appcompat/app/s;

    .line 5
    .line 6
    invoke-static {p1}, Lmiuix/appcompat/app/s;->q(Lmiuix/appcompat/app/s;)Landroid/widget/TextView;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/app/s$a;->a:Lmiuix/appcompat/app/s;

    .line 11
    .line 12
    invoke-static {v0}, Lmiuix/appcompat/app/s;->p(Lmiuix/appcompat/app/s;)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lmiuix/appcompat/app/s$a;->a:Lmiuix/appcompat/app/s;

    .line 20
    .line 21
    invoke-static {p1}, Lmiuix/appcompat/app/s;->r(Lmiuix/appcompat/app/s;)Ljava/text/NumberFormat;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lmiuix/appcompat/app/s$a;->a:Lmiuix/appcompat/app/s;

    .line 28
    .line 29
    invoke-static {p1}, Lmiuix/appcompat/app/s;->s(Lmiuix/appcompat/app/s;)Landroid/widget/TextView;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lmiuix/appcompat/app/s$a;->a:Lmiuix/appcompat/app/s;

    .line 36
    .line 37
    invoke-static {p1}, Lmiuix/appcompat/app/s;->t(Lmiuix/appcompat/app/s;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object v0, p0, Lmiuix/appcompat/app/s$a;->a:Lmiuix/appcompat/app/s;

    .line 42
    .line 43
    invoke-static {v0}, Lmiuix/appcompat/app/s;->u(Lmiuix/appcompat/app/s;)Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    int-to-double v1, p1

    .line 52
    int-to-double v3, v0

    .line 53
    div-double/2addr v1, v3

    .line 54
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lmiuix/appcompat/app/s$a;->a:Lmiuix/appcompat/app/s;

    .line 60
    .line 61
    invoke-static {v0}, Lmiuix/appcompat/app/s;->r(Lmiuix/appcompat/app/s;)Ljava/text/NumberFormat;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lmiuix/appcompat/app/s$a;->a:Lmiuix/appcompat/app/s;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    sget v2, Lk9/d;->a:I

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 89
    .line 90
    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 91
    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/16 v3, 0x22

    .line 99
    .line 100
    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lmiuix/appcompat/app/s$a;->a:Lmiuix/appcompat/app/s;

    .line 104
    .line 105
    invoke-static {v0}, Lmiuix/appcompat/app/s;->u(Lmiuix/appcompat/app/s;)Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v1, p0, Lmiuix/appcompat/app/s$a;->a:Lmiuix/appcompat/app/s;

    .line 110
    .line 111
    invoke-static {v1}, Lmiuix/appcompat/app/s;->t(Lmiuix/appcompat/app/s;)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lmiuix/appcompat/app/s$a;->a:Lmiuix/appcompat/app/s;

    .line 119
    .line 120
    invoke-static {v0}, Lmiuix/appcompat/app/s;->s(Lmiuix/appcompat/app/s;)Landroid/widget/TextView;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    :cond_0
    return-void
.end method
