.class public final synthetic Lcom/android/calendar/homepage/z1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/YearFrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/YearFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/z1;->a:Lcom/android/calendar/homepage/YearFrameLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/homepage/z1;->a:Lcom/android/calendar/homepage/YearFrameLayout;

    invoke-static {v0, p1}, Lcom/android/calendar/homepage/YearFrameLayout;->a(Lcom/android/calendar/homepage/YearFrameLayout;Landroid/view/View;)V

    return-void
.end method
