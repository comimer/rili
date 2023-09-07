.class Lcom/android/calendar/event/b$c;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/event/b;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/b$c;->a:Lcom/android/calendar/event/b;

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
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/calendar/event/b$c;->a:Lcom/android/calendar/event/b;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/event/b;->e(Lcom/android/calendar/event/b;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-static {p1, p2}, Lcom/android/calendar/event/b;->i(Lcom/android/calendar/event/b;I)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/calendar/event/b$c;->a:Lcom/android/calendar/event/b;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/calendar/event/b;->f(Lcom/android/calendar/event/b;)Lmiuix/appcompat/app/l;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, -0x1

    .line 27
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/l;->e(I)Landroid/widget/Button;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 p2, 0x1

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 33
    .line 34
    .line 35
    return-void
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
