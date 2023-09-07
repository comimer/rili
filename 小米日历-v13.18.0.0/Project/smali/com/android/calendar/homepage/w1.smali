.class public final synthetic Lcom/android/calendar/homepage/w1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/android/calendar/homepage/x1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/calendar/homepage/x1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/w1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/calendar/homepage/w1;->b:Lcom/android/calendar/homepage/x1;

    return-void
.end method


# virtual methods
.method public final makeView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/w1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/homepage/w1;->b:Lcom/android/calendar/homepage/x1;

    invoke-static {v0, v1}, Lcom/android/calendar/homepage/x1;->A(Landroid/content/Context;Lcom/android/calendar/homepage/x1;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
