.class Lkb/c$a;
.super Ljava/lang/Object;
.source "DefaultTrigger.java"

# interfaces
.implements Lkb/b$j;


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
    iput-object p1, p0, Lkb/c$a;->a:Lkb/c;

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
.method public a(Lkb/a$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkb/c$a;->a:Lkb/c;

    .line 2
    .line 3
    invoke-static {v0}, Lkb/c;->V0(Lkb/c;)Landroid/widget/ProgressBar;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lkb/c$a;->a:Lkb/c;

    .line 15
    .line 16
    invoke-static {v0}, Lkb/c;->X0(Lkb/c;)Landroid/widget/TextView;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object p1, p1, Lkb/a$b;->f:[Ljava/lang/String;

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    aget-object p1, p1, v1

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method
