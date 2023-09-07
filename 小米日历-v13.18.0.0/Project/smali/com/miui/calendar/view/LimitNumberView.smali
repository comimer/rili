.class public Lcom/miui/calendar/view/LimitNumberView;
.super Lcom/miui/calendar/view/DynamicLinearLayout;
.source "LimitNumberView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/view/LimitNumberView$a;
    }
.end annotation


# instance fields
.field private i:Landroid/content/Context;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/calendar/view/LimitNumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/calendar/view/DynamicLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    iput-object p1, p0, Lcom/miui/calendar/view/LimitNumberView;->i:Landroid/content/Context;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/miui/calendar/view/DynamicLinearLayout;->h:Z

    return-void
.end method

.method static synthetic d(Lcom/miui/calendar/view/LimitNumberView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/calendar/view/LimitNumberView;->j:I

    .line 2
    .line 3
    return p0
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

.method static synthetic e(Lcom/miui/calendar/view/LimitNumberView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/view/LimitNumberView;->i:Landroid/content/Context;

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


# virtual methods
.method public setItemLayoutId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/calendar/view/LimitNumberView;->j:I

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
.end method

.method public setLimitNumber(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/calendar/view/LimitNumberView$a;

    .line 2
    .line 3
    const-string v1, "\\|"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p0, p1}, Lcom/miui/calendar/view/LimitNumberView$a;-><init>(Lcom/miui/calendar/view/LimitNumberView;[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/miui/calendar/view/DynamicLinearLayout;->setAdapter(Lcom/miui/calendar/view/i;)V

    .line 13
    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
