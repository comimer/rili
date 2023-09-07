.class Lcom/android/calendar/cards/w0$c;
.super Ljava/lang/Object;
.source "HolidayCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/cards/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Lcom/miui/calendar/view/OnlineImageView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0506

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/cards/w0$c;->a:Landroid/view/View;

    const v0, 0x7f0a04a8

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/cards/w0$c;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0531

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/cards/w0$c;->c:Landroid/widget/TextView;

    const v0, 0x7f0a02e9

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/calendar/view/OnlineImageView;

    iput-object p1, p0, Lcom/android/calendar/cards/w0$c;->d:Lcom/miui/calendar/view/OnlineImageView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/android/calendar/cards/w0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/w0$c;-><init>(Landroid/view/View;)V

    return-void
.end method
