---
title:  构建界面
description:  在此步骤中，您将构建应用的唯一一个画面。

---

构建界面
====

为了能够查看应用的连接状态，您需要将 `TextView` 视图添加到屏幕。您还将添加按钮来控制呼叫（应答、拒绝、结束）。使用下面的布局替换 `app/res/layout.activity_main.xml` 文件的内容：

```xml
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
        xmlns:app="http://schemas.android.com/apk/res-auto"
        xmlns:tools="http://schemas.android.com/tools"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        tools:context=".MainActivity">

    <TextView
            android:id="@+id/connectionStatusTextView"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_marginBottom="40dp"
            android:text="Hello World!"
            app:layout_constraintBottom_toBottomOf="parent"
            app:layout_constraintLeft_toLeftOf="parent"
            app:layout_constraintRight_toRightOf="parent" />

    <Button
            android:id="@+id/answerCallButton"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_marginBottom="40dp"
            android:text="Answer"
            android:visibility="gone"
            app:layout_constraintBottom_toTopOf="@id/connectionStatusTextView"
            app:layout_constraintLeft_toLeftOf="parent"
            app:layout_constraintRight_toLeftOf="@id/rejectCallButton"
            tools:visibility="visible" />

    <Button
            android:id="@+id/rejectCallButton"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_marginBottom="40dp"
            android:text="Reject"
            android:visibility="gone"
            app:layout_constraintBottom_toTopOf="@id/connectionStatusTextView"
            app:layout_constraintLeft_toRightOf="@+id/answerCallButton"
            app:layout_constraintRight_toRightOf="parent"
            tools:visibility="visible" />

    <Button
            android:id="@+id/endCallButton"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_marginBottom="40dp"
            android:text="End"
            android:visibility="gone"
            app:layout_constraintBottom_toTopOf="@id/connectionStatusTextView"
            app:layout_constraintLeft_toLeftOf="parent"
            app:layout_constraintRight_toRightOf="parent"
            tools:visibility="visible" />

</androidx.constraintlayout.widget.ConstraintLayout>
```

构建和运行
-----

按 `Cmd + R` 构建并运行该应用。
