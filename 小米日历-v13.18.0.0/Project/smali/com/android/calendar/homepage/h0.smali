.class public final synthetic Lcom/android/calendar/homepage/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/i0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/h0;->a:Lcom/android/calendar/homepage/i0;

    return-void
.end method


# virtual methods
.method public final makeView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/homepage/h0;->a:Lcom/android/calendar/homepage/i0;

    invoke-static {v0}, Lcom/android/calendar/homepage/i0;->A(Lcom/android/calendar/homepage/i0;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
