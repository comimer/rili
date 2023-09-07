.class Lcom/android/calendar/homepage/WeekHeaderView$a;
.super Lg9/b;
.source "WeekHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/homepage/WeekHeaderView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/homepage/WeekHeaderView;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/WeekHeaderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/WeekHeaderView$a;->a:Lcom/android/calendar/homepage/WeekHeaderView;

    .line 2
    .line 3
    invoke-direct {p0}, Lg9/b;-><init>()V

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
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lg9/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p1, "paddingStart"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lg9/c;->b(Ljava/util/Collection;Ljava/lang/String;)Lg9/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "paddingEnd"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lg9/c;->b(Ljava/util/Collection;Ljava/lang/String;)Lg9/c;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/homepage/WeekHeaderView$a;->a:Lcom/android/calendar/homepage/WeekHeaderView;

    .line 18
    .line 19
    invoke-virtual {p1}, Lg9/c;->d()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {v0, p1}, Lcom/android/calendar/homepage/WeekHeaderView;->a(Lcom/android/calendar/homepage/WeekHeaderView;I)I

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/calendar/homepage/WeekHeaderView$a;->a:Lcom/android/calendar/homepage/WeekHeaderView;

    .line 27
    .line 28
    invoke-virtual {p2}, Lg9/c;->d()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-static {p1, p2}, Lcom/android/calendar/homepage/WeekHeaderView;->b(Lcom/android/calendar/homepage/WeekHeaderView;I)I

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/calendar/homepage/WeekHeaderView$a;->a:Lcom/android/calendar/homepage/WeekHeaderView;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method
