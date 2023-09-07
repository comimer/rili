.class Lcom/android/calendar/event/q1$a;
.super Ljava/lang/Object;
.source "NewEditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/q1;->H0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/android/calendar/event/q1;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/q1;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/q1$a;->b:Lcom/android/calendar/event/q1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/calendar/event/q1$a;->a:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/calendar/event/q1$a;->b:Lcom/android/calendar/event/q1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/event/q1;->b(Lcom/android/calendar/event/q1;)Lmiuix/appcompat/app/l;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lmiuix/appcompat/app/l;->f()Landroid/widget/ListView;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/android/calendar/event/q1$a;->a:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/calendar/event/q1$a;->b:Lcom/android/calendar/event/q1;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/calendar/event/q1;->c(Lcom/android/calendar/event/q1;)Lcom/android/calendar/common/l;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/android/calendar/common/l;->h()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/calendar/event/q1$a;->b:Lcom/android/calendar/event/q1;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/android/calendar/event/q1;->c(Lcom/android/calendar/event/q1;)Lcom/android/calendar/common/l;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/android/calendar/event/q1$a;->b:Lcom/android/calendar/event/q1;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/android/calendar/event/q1;->r(Lcom/android/calendar/event/q1;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/l;->b(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object v0, p0, Lcom/android/calendar/event/q1$a;->b:Lcom/android/calendar/event/q1;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/android/calendar/event/q1;->b(Lcom/android/calendar/event/q1;)Lmiuix/appcompat/app/l;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->f()Landroid/widget/ListView;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lcom/android/calendar/event/q1$a$a;

    .line 52
    .line 53
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/event/q1$a$a;-><init>(Lcom/android/calendar/event/q1$a;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method
