.class public final synthetic Lcom/android/calendar/event/f1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/m1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/m1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/f1;->a:Lcom/android/calendar/event/m1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/f1;->a:Lcom/android/calendar/event/m1;

    invoke-static {v0, p1}, Lcom/android/calendar/event/m1;->d0(Lcom/android/calendar/event/m1;Landroid/view/View;)V

    return-void
.end method
