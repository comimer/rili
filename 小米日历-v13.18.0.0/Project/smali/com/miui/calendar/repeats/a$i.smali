.class Lcom/miui/calendar/repeats/a$i;
.super Ljava/lang/Object;
.source "CustomRepeatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/repeats/a;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/repeats/a;


# direct methods
.method constructor <init>(Lcom/miui/calendar/repeats/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/repeats/a$i;->a:Lcom/miui/calendar/repeats/a;

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
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/repeats/a$i;->a:Lcom/miui/calendar/repeats/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/miui/calendar/repeats/a;->i(Lcom/miui/calendar/repeats/a;)Lmiuix/appcompat/widget/Spinner;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/miui/calendar/repeats/a$i;->a:Lcom/miui/calendar/repeats/a;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/miui/calendar/repeats/a;->j(Lcom/miui/calendar/repeats/a;)V

    .line 17
    .line 18
    .line 19
    return-void
    .line 20
    .line 21
    .line 22
.end method
