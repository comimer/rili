.class public final synthetic Lcom/android/calendar/common/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/common/ShareView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/common/ShareView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/common/v;->a:Lcom/android/calendar/common/ShareView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/common/v;->a:Lcom/android/calendar/common/ShareView;

    invoke-static {v0, p1}, Lcom/android/calendar/common/ShareView;->u(Lcom/android/calendar/common/ShareView;Landroid/view/View;)V

    return-void
.end method
