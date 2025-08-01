# Employee Health Analytics: $983K Budget Optimization & Absenteeism Forecasting

## Executive Summary
**Analyzed 1,509 employee health records to optimize $983,221 in compensation budget, delivering actionable workforce planning insights that identified seasonal staffing gaps and cost-effective employee incentive strategies.**

**Key Business Impact:**
- **Budget Optimization**: Distributed $983K across 686 non-smoking employees ($0.68/hour increase)
- **Performance Incentives**: Identified 111 "healthiest employees" eligible for $1,000 bonuses
- **Workforce Planning**: Discovered 55% higher absence rates during Spring/Summer requiring additional coverage
- **Risk Insight**: Revealed counterintuitive finding that "healthy" BMI employees have highest absence rates

---

## [**VIEW INTERACTIVE DASHBOARD**](https://public.tableau.com/app/profile/adonnis.peralta/viz/HRAbsenteeInsuranceAnalysis/HRSummaryDashboard)
*Real-time budget calculator and seasonal absence forecasting tool*

---

## Business Context
**Scenario**: HR department requested data-driven analysis to:
1. Allocate $983,221 non-smoker incentive budget across eligible employees
2. Distribute $1,000 bonuses to healthiest employees meeting specific criteria
3. Identify seasonal patterns to optimize staffing and reduce operational disruption
4. Understand primary drivers of employee absenteeism

## Key Findings & Business Impact

### Budget Distribution Analysis
- **686 employees (92.7%)** qualified as non-smokers for compensation increase
- **Recommended distribution**: $0.68/hour increase OR $1,433.26 annual bonus per employee
- **111 employees (15%)** met "healthiest employee" criteria for $1,000 bonus
  - *Criteria: BMI < 25, non-smoker, non-drinker, below-average absenteeism*

### Seasonal Workforce Planning
| Season | Absence Hours | Staffing Impact |
|--------|---------------|-----------------|
| **Spring** | Highest | Requires 55% additional coverage |
| **Summer** | Second highest | Peak vacation + sick leave overlap |
| **Fall/Winter** | Lowest | Optimal time for training/projects |

### Health Metrics Paradox
**Surprising Discovery**: Employees in "Healthy" and "Overweight" BMI categories showed 55% higher average absence hours than expected, suggesting need for targeted wellness interventions.

### Primary Absence Drivers
1. **Medical Consultation** - 20.14% of all absences
2. **Dental Consultation** - 15.14% of all absences  
3. **Physiotherapy** - 9.32% of all absences

## Technical Implementation

### Data Architecture
- **Dataset Size**: 1,509 employee records across 3 normalized tables
- **Tables**: `absenteeism_at_work`, `compensation`, `reasons`
- **Time Period**: Full calendar year analysis

### SQL Techniques Demonstrated
```sql
-- Complex business logic with multiple criteria
SELECT COUNT(*) AS healthiest_employees
FROM absenteeism_at_work 
WHERE Social_smoker = 0 
  AND Social_drinker = 0 
  AND Body_mass_index < 25 
  AND Absenteeism_time_in_hours < (
      SELECT AVG(Absenteeism_time_in_hours) 
      FROM absenteeism_at_work
  );
```

**Technical Skills Applied:**
- **Complex Joins**: 3-table LEFT JOINs with business logic
- **CTEs & Subqueries**: Multi-step calculations for percentage analysis
- **CASE Statements**: BMI categorization and seasonal groupings
- **Window Functions**: Comparative analytics and ranking
- **Business Logic**: Multi-criteria employee eligibility algorithms

### Dashboard Features
**Interactive Tableau Dashboard** includes:
- **Budget Calculator**: Real-time cost impact of policy changes
- **Seasonal Filters**: Drill-down by quarter, month, or custom date ranges
- **Absence Reason Analysis**: Top 10 reasons with trend analysis
- **Employee Segmentation**: BMI categories, smoking status, health metrics
- **Executive KPIs**: Key metrics dashboard for leadership presentations

## Strategic Recommendations

### Immediate Actions (0-30 days)
1. **Implement compensation increases** for 686 non-smoking employees
2. **Award health bonuses** to 111 qualifying employees
3. **Begin Spring staffing preparation** - hire temporary staff or cross-train existing employees

### Medium-term Initiatives (30-90 days)
1. **Wellness Program Expansion**: Target medical/dental absence reduction through preventive care
2. **Telehealth Implementation**: Reduce time away from work for routine consultations
3. **Seasonal Coverage Planning**: Develop rotating coverage schedules for high-absence periods

### Long-term Strategy (90+ days)
1. **Predictive Analytics**: Implement machine learning models for absence forecasting
2. **Employee Health Correlation**: Analyze relationship between health metrics and productivity
3. **Cost-Benefit Analysis**: Track ROI of health incentive programs

## 🔗 Project Resources
- **SQL Queries**: [View all business logic queries](<HR Request Results Queries.sql>)
- **Dashboard Screenshot**:
  ![Static dashboard views](<HR Dashboard Screenshot.png>)
- **Data Model**:
  ![Entity Relationship Diagram](<HR_Health_Insurance_Analysis_EDR.png>)

## Future Enhancements
- **Predictive Modeling**: Machine learning algorithms to forecast individual employee absence risk
- **Cost Analysis**: ROI tracking for health incentive programs
- **Integration**: API connections to HRIS systems for real-time data updates
- **Advanced Analytics**: Correlation analysis between productivity, health metrics, and compensation

---

**Technologies Used**: SQL (MySQL) | Tableau | Data Analysis

**Business Value Delivered**: $983K+ budget optimization, workforce planning insights, employee health program recommendations
