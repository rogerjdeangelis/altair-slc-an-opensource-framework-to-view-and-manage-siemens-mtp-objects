%let pgm=altair-slc-an-opensource-framework-to-view-and-manage-siemens-MTP-objects;

%stop_submission;

Altair slc an opensource framework to view and manage siemens MTP objects

Too long to post here, see
https://github.com/rogerjdeangelis/altair-slc-an-opensource-framework-to-view-and-manage-siemens-mtp-objects

I completely open source viewer is presented for Siemens MTP objects. A web page is created displaying the
MTP object properties and a button is added to save the page to a png graphic.

This MTP viewer lets you update the Object and refresh using 'Load MTP viewer'.
I chose to save as a png so you can seen the screen image, but you can save it in
other formats(xml)?

 This is what you should see on yur screen.

 |==============================================================================================|
 |                     Simple MTP Object Viewer                                                 |
 |= ============================================================================================|
 |                                                                                              |
 | MTP-style object list                                                                        |
 |                                                                                              |
 |----------------------------------------------------------------------------------------------|
 |   Family   | Type       | Data Assembly | Symbol | Interface  | Web URL                      |
 |----------------------------------------------------------------------------------------------|
 |   Control  | PIDCtrl    | PID_101       | P101   | LevelLoop  | http://192.168.0.10/pid101   |
 |   Valve    | OnOffValve | VLV_201       | V201   | FeedValve  | http://192.168.0.10/v201     |
 |   Motor    | DOLMotor   | MTR_301       | M301   | PumpMotor  | http://192.168.0.10/m301     |
 |----------------------------------------------------------------------------------------------|
 |                                                                                              |
 | [ Load MTP Objects ]                                                                         |
 | [ Save as PNG      ]                                                                         |
 |                                                                                              |
 |==============================================================================================|

 Here ia a png image of the screen.
  https://github.com/rogerjdeangelis/altair-slc-an-opensource-framework-to-view-and-manage-siemens-mtp-objects/blob/main/mtp_viewer_screenshot.png

macros at
https://github.com/rogerjdeangelis/utl-macros-used-in-topmany-of-rogerjdeangelis-repositories


Note: This solution uses the 'standard private IP address', 192.168.0.10. To see your
standard private IP address, tyoe ipconfig in a cammand window and look for IPv4.
You should see somthing close to 192.168.#.##.

Contents

  1 Input MTP xml file
  2 Display MTP web page with save button

/*   _                   _     __  __ _____ ____                   _
/ | (_)_ __  _ __  _   _| |_  |  \/  |_   _|  _ \  __  ___ __ ___ | |
| | | | `_ \| `_ \| | | | __| | |\/| | | | | |_) | \ \/ / `_ ` _ \| |
| | | | | | | |_) | |_| | |_  | |  | | | | |  __/   >  <| | | | | | |
|_| |_|_| |_| .__/ \__,_|\__| |_|  |_| |_| |_|     /_/\_\_| |_| |_|_|
            |_|
*/

data _null_;
   file "d:/mtp/mtp_objects.xml";
   input;
   put _infile_;
cards4;
<?xml version="1.0" encoding="UTF-8"?>
<MTPObjects>
    <Object family="Control" type="PIDCtrl" dataAssembly="PID_101" symbol="P101" interface="LevelLoop" webUrl="http://192.168.0.10/pid101" />
    <Object family="Valve" type="OnOffValve" dataAssembly="VLV_201" symbol="V201" interface="FeedValve" webUrl="http://192.168.0.10/v201" />
    <Object family="Motor" type="DOLMotor" dataAssembly="MTR_301" symbol="M301" interface="PumpMotor" webUrl="http://192.168.0.10/m301" />
</MTPObjects>
;;;;
run;

/***********************************************************************************************************************************************/
/*  d:/mtp/mtp_objects.xml                                                                                                                     */
/*                                                                                                                                             */
/* <MTPObjects>                                                                                                                                */
/*   <Object family="Control" type="PIDCtrl" dataAssembly="PID_101" symbol="P101" interface="LevelLoop" webUrl="http://192.168.0.10/pid101" /> */
/*   <Object family="Valve" type="OnOffValve" dataAssembly="VLV_201" symbol="V201" interface="FeedValve" webUrl="http://192.168.0.10/v201" />  */
/*   <Object family="Motor" type="DOLMotor" dataAssembly="MTR_301" symbol="M301" interface="PumpMotor" webUrl="http://192.168.0.10/m301" />    */
/* </MTPObjects>                                                                                                                               */
/***********************************************************************************************************************************************/

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/

1                                          Altair SLC         09:26 Wednesday, May 27, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas
NOTE: AUTOEXEC source line
1       +  ï»¿ods _all_ close;
           ^
ERROR: Expected a statement keyword : found "?"
NOTE: AUTOEXEC processing completed

1          data _null_;
2            file "d:/mtp/mtp_objects.xml";
3            input;
4            put _infile_;
5         cards4;

NOTE: The file 'd:\mtp\mtp_objects.xml' is:
      Filename='d:\mtp\mtp_objects.xml',
      Owner Name=SLC\suzie,
      File size (bytes)=0,
      Create Time=18:59:16 May 22 2026,
      Last Accessed=09:26:41 May 27 2026,
      Last Modified=09:26:41 May 27 2026,
      Lrecl=32767, Recfm=V

NOTE: 6 records were written to file 'd:\mtp\mtp_objects.xml'
      The minimum record length was 80
      The maximum record length was 141
NOTE: The data step took :
      real time : 0.000
      cpu time  : 0.000


6         <?xml version="1.0" encoding="UTF-8"?>
7         <MTPObjects>
8             <Object family="Control" type="PIDCtrl" dataAssembly="PID_101" symbol="P101" interface="LevelLoop" webUrl="http://192.168.0.10/pid101" />
9             <Object family="Valve" type="OnOffValve" dataAssembly="VLV_201" symbol="V201" interface="FeedValve" webUrl="http://192.168.0.10/v201" />
10            <Object family="Motor" type="DOLMotor" dataAssembly="MTR_301" symbol="M301" interface="PumpMotor" webUrl="http://192.168.0.10/m301" />
11        </MTPObjects>
12        ;;;;
13        run;
ERROR: Error printed on page 1

NOTE: Submitted statements took :
      real time : 0.094
      cpu time  : 0.015

/*___        _ _           _               __  __ _____ ____                _             _
|___ \    __| (_)___ _ __ | | __ _ _   _  |  \/  |_   _|  _ \ __      _____| |__   __   _(_) _____      __
  __) |  / _` | / __| `_ \| |/ _` | | | | | |\/| | | | | |_) |\ \ /\ / / _ \ `_ \  \ \ / / |/ _ \ \ /\ / /
 / __/  | (_| | \__ \ |_) | | (_| | |_| | | |  | | | | |  __/  \ V  V /  __/ |_) |  \ V /| |  __/\ V  V /
|_____|  \__,_|_|___/ .__/|_|\__,_|\__, | |_|  |_| |_| |_|      \_/\_/ \___|_.__/    \_/ |_|\___| \_/\_/
                    |_|            |___/
*/

%utlfkil(d:/mtp/mtp_viewer_screenshot); /*--- delete if exists ---*/

options validvarname=v7;
options set=PYTHONHOME "D:\py314";
proc python;
submit;
import sys
import xml.etree.ElementTree as ET
from PySide6.QtWidgets import (
    QApplication, QWidget, QVBoxLayout, QTableWidget,
    QTableWidgetItem, QLabel, QPushButton, QMessageBox, QFileDialog
)
from PySide6.QtGui import QPixmap
from PySide6.QtCore import QRect

XML_FILE = "d:/mtp/mtp_objects.xml"

def load_objects(xml_file):
    tree = ET.parse(xml_file)
    root = tree.getroot()
    rows = []
    for obj in root.findall("Object"):
        rows.append({
            "family": obj.get("family", ""),
            "type": obj.get("type", ""),
            "dataAssembly": obj.get("dataAssembly", ""),
            "symbol": obj.get("symbol", ""),
            "interface": obj.get("interface", ""),
            "webUrl": obj.get("webUrl", "")
        })
    return rows

class MTPOViewer(QWidget):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Simple MTP Object Viewer")
        self.resize(900, 400)

        layout = QVBoxLayout(self)

        layout.addWidget(QLabel("MTP-style object list"))

        self.table = QTableWidget(0, 6)
        self.table.setHorizontalHeaderLabels(
            ["Family", "Type", "Data Assembly", "Symbol", "Interface", "Web URL"]
        )
        layout.addWidget(self.table)

        # Button layout
        button_layout = QVBoxLayout()

        refresh_btn = QPushButton("Load MTP Objects")
        refresh_btn.clicked.connect(self.load_data)
        button_layout.addWidget(refresh_btn)

        # Add Save as PNG button
        save_btn = QPushButton("Save as PNG")
        save_btn.clicked.connect(self.save_as_png)
        button_layout.addWidget(save_btn)

        layout.addLayout(button_layout)

        self.load_data()

    def load_data(self):
        try:
            objects = load_objects(XML_FILE)
            self.table.setRowCount(len(objects))
            for row, obj in enumerate(objects):
                for col, key in enumerate(["family", "type", "dataAssembly", "symbol", "interface", "webUrl"]):
                    self.table.setItem(row, col, QTableWidgetItem(obj[key]))
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Could not load XML:\n{e}")

    def save_as_png(self):
        """Capture the current widget and save it as a PNG file"""
        try:
            # Ask user for file location
            file_path, _ = QFileDialog.getSaveFileName(
                self,
                "Save as PNG",
                "d:/mtp/mtp_viewer_screenshot.png",
                "PNG Files (*.png)"
            )

            if file_path:
                # Capture the entire widget
                pixmap = QPixmap(self.size())
                self.render(pixmap)

                # Save to file
                pixmap.save(file_path, "PNG")

                QMessageBox.information(
                    self,
                    "Success",
                    f"Screenshot saved to:\n{file_path}"
                )
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Could not save screenshot:\n{e}")

if __name__ == "__main__":
    app = QApplication(sys.argv)
    viewer = MTPOViewer()
    viewer.show()
    sys.exit(app.exec())
endsubmit;
run;

see
https://github.com/rogerjdeangelis/altair-slc-an-opensource-framework-to-view-and-manage-siemens-mtp-objects/blob/main/mtp_viewer_screenshot.png

/**************************************************************************************************************************/
/* +==============================================================================================+                       */
/* |                     Simple MTP Object Viewer                                                 |                       */
/* |= ============================================================================================|                       */
/* |                                                                                              |                       */
/* | MTP-style object list                                                                        |                       */
/* |                                                                                              |                       */
/* |----------------------------------------------------------------------------------------------|                       */
/* |   Family   | Type       | Data Assembly | Symbol | Interface  | Web URL                      |                       */
/* |----------------------------------------------------------------------------------------------|                       */
/* |   Control  | PIDCtrl    | PID_101       | P101   | LevelLoop  | http://192.168.0.10/pid101   |                       */
/* |   Valve    | OnOffValve | VLV_201       | V201   | FeedValve  | http://192.168.0.10/v201     |                       */
/* |   Motor    | DOLMotor   | MTR_301       | M301   | PumpMotor  | http://192.168.0.10/m301     |                       */
/* |----------------------------------------------------------------------------------------------|                       */
/* |                                                                                              |                       */
/* | [ Load MTP Objects ]                                                                         |                       */
/* | [ Save as PNG      ]                                                                         |                       */
/* |                                                                                              |                       */
/* +==============================================================================================+                       */
/**************************************************************************************************************************/

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/

1                                          Altair SLC         10:36 Wednesday, May 27, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas
NOTE: AUTOEXEC source line
1       +  ï»¿ods _all_ close;
           ^
ERROR: Expected a statement keyword : found "?"

NOTE: AUTOEXEC processing completed

1         options validvarname=v7;
2         options set=PYTHONHOME "D:\py314";
3         proc python;
4         submit;
5         import sys
6         import xml.etree.ElementTree as ET
7         from PySide6.QtWidgets import (
8             QApplication, QWidget, QVBoxLayout, QTableWidget,
9             QTableWidgetItem, QLabel, QPushButton, QMessageBox, QFileDialog
10        )
11        from PySide6.QtGui import QPixmap
12        from PySide6.QtCore import QRect
13
14        XML_FILE = "d:/mtp/mtp_objects.xml"
15
16        def load_objects(xml_file):
17            tree = ET.parse(xml_file)
18            root = tree.getroot()
19            rows = []
20            for obj in root.findall("Object"):
21                rows.append({
22                    "family": obj.get("family", ""),
23                    "type": obj.get("type", ""),
24                    "dataAssembly": obj.get("dataAssembly", ""),
25                    "symbol": obj.get("symbol", ""),
26                    "interface": obj.get("interface", ""),
27                    "webUrl": obj.get("webUrl", "")
28                })
29            return rows
30
31        class MTPOViewer(QWidget):
32            def __init__(self):
33                super().__init__()
34                self.setWindowTitle("Simple MTP Object Viewer")
35                self.resize(900, 400)
36
37                layout = QVBoxLayout(self)
38
39                layout.addWidget(QLabel("MTP-style object list"))
40
41                self.table = QTableWidget(0, 6)
42                self.table.setHorizontalHeaderLabels(
43                    ["Family", "Type", "Data Assembly", "Symbol", "Interface", "Web URL"]
44                )
45                layout.addWidget(self.table)
46
47                # Button layout
48                button_layout = QVBoxLayout()
49
50                refresh_btn = QPushButton("Load MTP Objects")
51                refresh_btn.clicked.connect(self.load_data)
52                button_layout.addWidget(refresh_btn)
53
54                # Add Save as PNG button
55                save_btn = QPushButton("Save as PNG")
56                save_btn.clicked.connect(self.save_as_png)
57                button_layout.addWidget(save_btn)
58
59                layout.addLayout(button_layout)
60
61                self.load_data()
62
63            def load_data(self):
64                try:
65                    objects = load_objects(XML_FILE)
66                    self.table.setRowCount(len(objects))
67                    for row, obj in enumerate(objects):
68                        for col, key in enumerate(["family", "type", "dataAssembly", "symbol", "interface", "webUrl"]):
69                            self.table.setItem(row, col, QTableWidgetItem(obj[key]))
70                except Exception as e:
71                    QMessageBox.critical(self, "Error", f"Could not load XML:\n{e}")
72
73            def save_as_png(self):
74                """Capture the current widget and save it as a PNG file"""
75                try:
76                    # Ask user for file location
77                    file_path, _ = QFileDialog.getSaveFileName(
78                        self,
79                        "Save as PNG",
80                        "d:/mtp/mtp_viewer_screenshot.png",
81                        "PNG Files (*.png)"
82                    )
83
84                    if file_path:
85                        # Capture the entire widget
86                        pixmap = QPixmap(self.size())
87                        self.render(pixmap)
88
89                        # Save to file
90                        pixmap.save(file_path, "PNG")
91
92                        QMessageBox.information(
93                            self,
94                            "Success",
95                            f"Screenshot saved to:\n{file_path}"
96                        )
97                except Exception as e:
98                    QMessageBox.critical(self, "Error", f"Could not save screenshot:\n{e}")
99
100       if __name__ == "__main__":
101           app = QApplication(sys.argv)
102           viewer = MTPOViewer()
103           viewer.show()
104           sys.exit(app.exec())
105       endsubmit;

NOTE: Submitting statements to Python:


106       run;
NOTE: Procedure python step took :
      real time : 17.656
      cpu time  : 0.015


107
108
ERROR: Error printed on page 1

NOTE: Submitted statements took :
      real time : 17.782
      cpu time  : 0.125
/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
