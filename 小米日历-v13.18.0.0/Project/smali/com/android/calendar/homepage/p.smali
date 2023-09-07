.class public final synthetic Lcom/android/calendar/homepage/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/AllInOneActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/p;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/homepage/p;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    invoke-static {v0, p1}, Lcom/android/calendar/homepage/AllInOneActivity;->Y(Lcom/android/calendar/homepage/AllInOneActivity;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
