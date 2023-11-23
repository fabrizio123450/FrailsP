class ExcelViewerController < ApplicationController
  def show
    file_path = Rails.root.join('public', 'PLAN_CUENTAS_18-10.xls')
    @excel_data = read_excel(file_path)
  end

  private

  def read_excel(file_path)
    excel = Roo::Excel.new(file_path)
    excel.default_sheet = excel.sheets.first
    data = []

    2.upto(excel.last_row) do |row|
      data << excel.row(row)
    end

    data
  end
end
