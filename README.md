Digital Detours

Digital Detours is my Dear Data project investigating how planned phone use can turn into unexpected distractions. I am collecting observations of my phone-use sessions to compare what I intended to do with what actually happened.

What I am recording

Each observation in observations.csv includes:

* id: Observation number
* day: Numbered day of data collection
* period: Morning (AM), afternoon (PM), or evening (EVE)
* intended: Original purpose of the session
* ended: Category of activity at the end
* detour: Whether the session involved a distraction
* minutes: Total session duration
* completed: Whether the original task was completed
* provenance: How the observation was obtained
* start_app: Application used at the start
* end_app: Application used at the end
* detour_minutes: Minutes spent on the detour

I aim to collect approximately 2–3 genuine observations per day.

Current progress

My dataset currently contains 20 recorded phone-use observations across 6 collection days.

My next milestone is 25 genuine observations for the Part 1 data check-in. The longer-term goal is 100 observations for the Dear Data project.

Processing visualisation

My Processing sketch loads observations from a CSV file and represents each phone-use session as a circle.

* Circle size represents total session duration in minutes.
* Red circles indicate sessions involving a detour.
* Green circles indicate sessions without a detour.
* Circles are arranged in rows of five.

The sketch includes a method, getCircleSize(int minutes), which returns the value used to determine each circle’s size.

Project structure

DigitalDetours/
├── DigitalDetours.pde
└── data/
    └── observations.csv

To run the visualisation, open DigitalDetours.pde in Processing using Java mode, then run the sketch. The CSV loads from the data folder.

Next steps

Continue collecting real observations, review the data for accuracy, and improve the visualisation as the dataset grows.