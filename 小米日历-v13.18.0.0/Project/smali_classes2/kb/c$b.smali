.class Lkb/c$b;
.super Ljava/lang/Object;
.source "DefaultTrigger.java"

# interfaces
.implements Lkb/b$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkb/c;


# direct methods
.method constructor <init>(Lkb/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkb/c$b;->a:Lkb/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public a(Lkb/a$c;)V
    .locals 0

    return-void
.end method

.method public b(Lkb/a$c;I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    if-ge p2, v0, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lkb/c$b;->a:Lkb/c;

    .line 7
    .line 8
    invoke-static {p2}, Lkb/c;->Y0(Lkb/c;)Landroid/widget/TextView;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-object p1, p1, Lkb/a$c;->e:[Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    aget-object p1, p1, v0

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p2, p0, Lkb/c$b;->a:Lkb/c;

    .line 24
    .line 25
    invoke-static {p2}, Lkb/c;->Y0(Lkb/c;)Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iget-object p1, p1, Lkb/a$c;->e:[Ljava/lang/String;

    .line 30
    .line 31
    aget-object p1, p1, v0

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-object p1, p0, Lkb/c$b;->a:Lkb/c;

    .line 37
    .line 38
    invoke-static {p1}, Lkb/c;->Z0(Lkb/c;)Landroid/widget/ProgressBar;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/16 p2, 0x8

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lkb/c$b;->a:Lkb/c;

    .line 48
    .line 49
    invoke-static {p1}, Lkb/c;->a1(Lkb/c;)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    return-void
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method
