.class public final synthetic Lz1/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/dragview/AccountSettingBottomView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/dragview/AccountSettingBottomView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/g;->a:Lcom/android/calendar/dragview/AccountSettingBottomView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lz1/g;->a:Lcom/android/calendar/dragview/AccountSettingBottomView;

    invoke-static {v0}, Lcom/android/calendar/dragview/AccountSettingBottomView;->c(Lcom/android/calendar/dragview/AccountSettingBottomView;)V

    return-void
.end method
